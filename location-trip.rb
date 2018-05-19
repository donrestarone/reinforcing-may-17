class Location

	def initialize(name)
		@name = name
	end

	def name
		return @name 
	end
end

toronto = Location.new('toronto')
narnia = Location.new('narnia')
sarnia = Location.new('sarnia')
guantamo = Location.new('Guantamo')
disney = Location.new('disney')
#p toronto.name	#name method works 


class Trip
	
	def initialize
		@stops = []
	end

	def add_destination(location_object)
		@stops.push(location_object)
	end

	def stops
		# @stops.each do |stop|
		# 	p stop.name
		# end
		return @stops
	end

	def itinerary
		counter = 0
		p 'initialize trip. please stand by'
		@stops.each do |stop1|
			counter += 1
			stop2 = @stops[counter]
			if stop2
				p "travelled from #{stop1.name} to #{stop2.name}"
			else 
				p 'error'
			end

		end
		p 'ended trip'
	end
end

holiday = Trip.new

holiday.add_destination(toronto)
holiday.add_destination(narnia)
holiday.add_destination(sarnia)
holiday.add_destination(disney)
holiday.add_destination(guantamo)

p holiday.itinerary