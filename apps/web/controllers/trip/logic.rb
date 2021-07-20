module Web
  module Controllers
    module Trip
    		class Logic
    			def initialize()
    			end

    			def current_position
    			end

    			def random_position
    				randomLatitute = rand() * (180 - (-180)) + (-180)
    				randomLongitude = rand() * (180 - (-180)) + (-180)
    				aPosition = ['latitude' => randomLatitute, 'longitude' => randomLongitude]

    				return aPosition
    			end

    			def random_rider
    				riders = RiderRepository.new.all()
    				selectedRider = RiderRepository.new.find(rand(1..riders.count))
    				myRider = HumanRepository.new.find(selectedRider.human_id)

    				return myRider
    			end

    			def random_driver
    				drivers = DriverRepository.new.all()
    				selectedDriver = DriverRepository.new.find(rand(1..drivers.count))
    				myDriver = HumanRepository.new.find(selectedDriver.human_id)

    				return myDriver
    			end
			end
		end
	end
end