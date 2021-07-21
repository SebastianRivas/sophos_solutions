require_relative './logic'

module Web
  module Controllers
    module Trip
      class Update
        include Web::Action
        expose :myTrip

        def call(params)
          myLogic = Logic.new
          @myTrip = myLogic.update_trip(params[:id])
        end
      end
    end
  end
end
