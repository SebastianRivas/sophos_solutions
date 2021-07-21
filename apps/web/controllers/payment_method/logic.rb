require 'json'
require 'http'
require 'securerandom'

module Web
  module Controllers
    module PaymentMethod
    		class Logic

          def payment_reference
            return SecureRandom.alphanumeric
          end

          def acceptance_token
            response = HTTP.get('https://sandbox.wompi.co/v1/merchants/pub_test_Qv8oD1oGDSRPrzPzxxk9U3RX9EaoUN6M')
            json_file = response.parse
            myAcceptanceToken = json_file['data']['presigned_acceptance']['acceptance_token']

            return myAcceptanceToken
          end

          def card_token(number, exp_month, exp_year, cvc, card_holder)
            response = HTTP.auth('Bearer pub_test_Qv8oD1oGDSRPrzPzxxk9U3RX9EaoUN6M').post("https://sandbox.wompi.co/v1/tokens/cards", :json => { :number => number, :exp_month => exp_month, :exp_year => exp_year, :cvc => cvc, :card_holder => card_holder })
            json_file = response.parse
            myCardToken = json_file['data']['id']

            return myCardToken
          end

          def account_token(number)
            response = HTTP.auth('Bearer pub_test_Qv8oD1oGDSRPrzPzxxk9U3RX9EaoUN6M').post("https://sandbox.wompi.co/v1/tokens/nequi", :json => { :phone_number => number })
            json_file = response.parse
            myAccountToken = json_file['data']['id']

            return myAccountToken
          end

          def payment_source(type, token, customer_email, acceptance_token)
            response = HTTP.auth('Bearer prv_test_7SABWjV4il2GJMr9CMeWT8HdrjsGQnDk').post("https://sandbox.wompi.co/v1/payment_sources", :json => { :type => type, :token => token, :customer_email => customer_email, :acceptance_token => acceptance_token })
            json_file = response.parse
            myPaymentSource = json_file['data']['id']

            return myPaymentSource
          end

          def transaction(amount, customer_email, payment_source_id)
            response = HTTP.auth('Bearer prv_test_7SABWjV4il2GJMr9CMeWT8HdrjsGQnDk').post("https://sandbox.wompi.co/v1/transactions", :json => { :amount_in_cents => (amount).to_i, :currency => "COP", :customer_email => customer_email, :reference => payment_reference, :payment_source_id => payment_source_id })
            myTransaction = response.status
            
            return myTransaction
          end

          def payment_method_type(payment_type)
            payment_method_types = PaymentMethodTypeRepository.new.all()

            payment_method_types.each do |payment_method_type|
              if payment_method_type.name == payment_type
                return payment_method_type.id
              end
            end
          end

          def create_payment_method(payment_vars)
            myAcceptanceToken = acceptance_token
            payment_type = payment_vars[:selected_payment_method]

            myRider = HumanRepository.new.find(payment_vars[:rider_id])
            myPaymentMethodType = payment_method_type(payment_vars[:selected_payment_method])

            if payment_type == 'CARD'
              myToken = card_token(payment_vars[:credit_card_number], payment_vars[:month_expiration], payment_vars[:year_expiration], payment_vars[:cvc], payment_vars[:owner])
              myPaymentSourse = payment_source('CARD', myToken, myRider.e_mail, myAcceptanceToken)
            elsif payment_type == 'NEQUI'
              myToken = account_token(payment_vars[:account_number])
              myPaymentSourse = payment_source('NEQUI', myToken, myRider.e_mail, myAcceptanceToken)
            end

            payment_method_result = PaymentMethodRepository.new.create(human_id: myRider.id, payment_method_type_id: myPaymentMethodType, acceptance_token: myAcceptanceToken, pay_token: myToken, pay_source: myPaymentSourse)
            myTransaction = transaction(payment_vars[:trip_cost], myRider.e_mail, payment_method_result.pay_source)

            return myTransaction
          end
			end
		end
	end
end
