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
    				myPosition = {:latitude => randomLatitute.round(6), :longitude => randomLongitude.round(6)}

    				return myPosition
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

          def distance(tripInitLatitude, tripInitLongitude, tripEndLatitude, tripEndLongitude)
            initRadiansLatitude = (tripInitLatitude * Math::PI)/180
            endRadiansLatitude = (tripEndLatitude * Math::PI)/180
            initRadiansLongitude = (tripInitLongitude * Math::PI)/180
            endRadiansLongitude = (tripEndLongitude * Math::PI)/180

            distanceBetweenLatitudes = endRadiansLongitude - initRadiansLongitude
            distanceBetweenLongitudes = endRadiansLatitude - initRadiansLatitude

            geoDistance = ((Math.sin(distanceBetweenLatitudes/2) ** 2) + Math.cos(tripInitLatitude) * Math.cos(tripEndLatitude) * (Math.sin(distanceBetweenLongitudes/2) ** 2)).round(0)
            cicleDistance = 2 * Math.asin(Math.sqrt(geoDistance))

            return (cicleDistance * 6371)
          end

          def calculate_trip_cost(tripInitLatitude, tripInitLongitude, tripEndLatitude, tripEndLongitude, initTime, endTime)
            tripDistance = distance(tripInitLatitude, tripInitLongitude, tripEndLatitude, tripEndLongitude)
            tripTime = (endTime - initTime)/60
            tripCost = (tripDistance * 1000) + (tripTime * 200) + 3500

            return tripCost
          end

          def create_trip(latitude, longitude)
            rider = random_rider
            driver = random_driver

            result = TripRepository.new.create(rider_id: rider.id, driver_id: driver.id, init_latitude: latitude, init_longitude: longitude, init_time: Time.now)

            myTrip = {"tripCode" => result.id, "tripDriver" => driver, "tripRider" => rider, "tripInitLatitude" => latitude, "tripInitLongitude" => longitude}

            return myTrip
          end

          def update_trip(trip_id)
            position = random_position

            trip = TripRepository.new.find(trip_id)
            rider = HumanRepository.new.find(trip.rider_id)
            driver = HumanRepository.new.find(trip.driver_id)

            result = TripRepository.new.update(trip_id, end_latitude: position[:latitude], end_longitude: position[:longitude], end_time: Time.now)

            cost = calculate_trip_cost(result.init_latitude, result.init_longitude, result.end_latitude, result.end_longitude, result.init_time, result.end_time)

            myTrip = {"tripCode" => result.id, "tripDriver" => driver, "tripRider" => rider, "tripInitLatitude" => result.init_latitude, "tripInitLongitude" => result.init_longitude, "tripEndLatitude" => result.end_latitude, "tripEndLongitude" => result.end_longitude, "initTime" => result.init_time, "endTime" => result.end_time, "tripCost" => cost.round(0)}

            return myTrip
          end
			end
		end
	end
end
