require_relative './logic'

module Web
  module Controllers
    module Trip
      class Create
        include Web::Action
        expose :myTrip

        def call(params)
          myLogic = Logic.new
          @myTrip = myLogic.create_trip(params[:trip][:latitude], params[:trip][:longitude])          
        end
      end
    end
  end
end
