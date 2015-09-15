class Location < ActiveRecord::Base

	geocoded_by :my_location
	after_validation :geocode

		#here, beind the scenes, we will combine the address and city given to us by the User, while also adding the state (because we're only operating in Georgia here) and Geocody that!

	def my_location
		"#{address}, #{city}, GA"
	end	

end
