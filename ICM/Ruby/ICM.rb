puts ''
puts ' ___________'
puts ''
puts '     BMI    '
puts ' ___________'
puts ''
puts 'What is your mass in kg?'
mass = gets.chomp.to_f
puts ''
puts 'What is your height in m?'
height = gets.chomp.to_f
puts ''
bmi = (mass/(height*height))

categoryBMI = ''
if( bmi < 18.5 )
	if( bmi >= 16 )
		categoryBMI = "Underweight"
	else
		if( bmi >= 15 )
			categoryBMI = "Several Underweight"
		else
			categoryBMI = "Very Severely Underweight"
		end
	end
else
	if( bmi >= 25 )
		if( bmi >= 40 )
			if( bmi < 45 )
				categoryBMI = "Obesse Class III"
			else
				if( bmi < 50 )
					categoryBMI = "Obesse Class IV"
				else
					if( bmi < 60 )
						categoryBMI = "Obesse Class V"
					else
						categoryBMI = "Obesse Class VI"
					end
				end
			end
		else
			if( bmi < 30 )
				categoryBMI = "Overweight"
			else
				if( bmi < 35 )
					categoryBMI = "Obesse Class I"
				else
					categoryBMI = "Obesse Class II"
				end
			end
		end

	else
		categoryBMI = "Healthy weight"
	end
end

bmiS = "%.2f" % bmi
puts "BMI: " + bmiS + " | Your category is " + categoryBMI +"!"