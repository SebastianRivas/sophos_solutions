require_relative './logic'

module Web
  module Controllers
    module PaymentMethod
      class Create
        include Web::Action
        expose :myPaymentMethod

        def call(params)
          myLogic = Logic.new
          @myPaymentMethod = myLogic.create_payment_method(params[:payment_method])
        end
      end
    end
  end
end
