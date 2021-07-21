require 'json'
require 'http'

module Web
  module Controllers
    module PaymentMethod
    		class Logic

          def to_cents(number)
            return number * 100
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
            response = HTTP.auth('Bearer pub_test_Qv8oD1oGDSRPrzPzxxk9U3RX9EaoUN6M').post("https://sandbox.wompi.co/v1/tokens/cards", :json => { :phone_number => number })
            json_file = response.parse
            myAccountToken = json_file['data']['id']

            return myAccountToken
          end

          def payment_source(type, token, customer_email, acceptance_token)
            response = HTTP.auth('Bearer prv_test_7SABWjV4il2GJMr9CMeWT8HdrjsGQnDk').post("https://sandbox.wompi.co/v1/payment_sources", :json => { :type => type, :token => token, :customer_email => customer_email, :acceptance_token => acceptance_token })
            json_file = response.parse
            payment_source = json_file['data']['id']
          end

          def create_payment_method(human_id)
            pay_method = {  }
            pay_method_result = PaymentMethodRepository.new.create(pay_method)
          end
			end
		end
	end
end
