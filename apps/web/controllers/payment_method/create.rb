require_relative './logic'

module Web
  module Controllers
    module PaymentMethod
      class Create
        include Web::Action
        expose :myPaymentMethod

        #params do
        #  required(:account_number).filled(:int?)
        #  required(:credit_card_number).filled(:int?)
        #  required(:month_expiration).filled(:int?)
        #  required(:year_expiration).filled(:int?)
        #  required(:cvc).filled(:int?)
        #  required(:owner).filled(:str?)
        #end

        def call(params)
          #if params.valid?
            myLogic = Logic.new
            @myPaymentMethod = myLogic.create_payment_method(params[:payment_method])
          #else
          #  @myPaymentMethod = 'validation error'
          #end

        end
      end
    end
  end
end
