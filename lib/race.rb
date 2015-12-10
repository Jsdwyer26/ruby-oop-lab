require_relative "car"

class Race

  def initialize
  	@cars = [Car.new, Car.new]

  	num = Random.new
  	@cars[0].accelerate(num.rand(10))
  	@cars[1].accelerate(num.rand(10))
  end

	def cars
  		@cars
	end

	def winner
	  if cars[0].speed < cars[1].speed[0]
	    cars[1]
	  else
	  	cars[0]
	  end
	end

	def loser
		if winner == cars[1]
			cars[0]
		else 
			cars[1]
		end
	end

end