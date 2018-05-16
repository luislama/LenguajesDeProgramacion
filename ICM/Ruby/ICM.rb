puts ''
puts ' ___________'
puts ''
puts '     BMI    '
puts ' ___________'
puts ''




class Person

	def initialize(height, mass)
		@p_height = height
		@p_mass = mass
	end
	

	def getHeight
		@p_height
	end
	
	def getMass
		@p_mass
	end

end


class BMIcalc

	def self.calculateBMI (persona)
		( (persona.getMass.to_f) / ( (persona.getHeight.to_f)*(persona.getHeight.to_f) ) )
	end

	def self.getCategoryByBMI (persona)

		bmi = calculateBMI persona
		categoryBMI = ''
		
		if bmi < 30
			if bmi < 16
				if bmi < 15
					categoryBMI = "Very Severely Underweight"
				else
					categoryBMI = "Several Underweight"
				end
			elsif bmi >= 18.5
				if bmi < 25
					categoryBMI = "Healthy weight"
				else
					categoryBMI = "Overweight"
				end
			else
				categoryBMI = "Underweight"
			end
		elsif bmi >= 35
			if bmi < 45
				if bmi < 40
					categoryBMI = "Obesse Class II"
				else
					categoryBMI = "Obesse Class III"
				end
			elsif bmi >= 50
				if bmi < 60
					categoryBMI = "Obesse Class V"
				else
					categoryBMI = "Obesse Class VI"
				end
			else
				categoryBMI = "Obesse Class IV"
			end
		else
			categoryBMI = "Obesse Class I"
		end
		
		bmiS = "%.2f" % bmi
		puts "BMI: " + bmiS + " | Your category is " + categoryBMI +"!"	
		
	end

end




puts 'What is your mass in kg?'
mass = gets.chomp.to_f
puts ''
puts 'What is your height in m?'
height = gets.chomp.to_f
puts ''

persona = Person.new(height,mass)
BMIcalc.getCategoryByBMI persona