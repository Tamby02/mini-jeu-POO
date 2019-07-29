class Player
	attr_accessor :name, :life_points
	@@player =	0
		def initialize (name_of_player)
			@name = name_of_player
			@life_points = 10 
		end
		def show_state
			puts "#{self.name} a #{self.life_points} niveau de vie"
		end
		def gets_dammage (number_of_dammage)
			 @life_points = @life_points - number_of_dammage.to_i
				#puts "#{self.name} reçoit #{number_of_dammage} de dommages"
				if @life_points < 0 || @life_points == 0
					puts "Le joueur #{self.name} a été tué!!" 
				#else 
				#	puts show_state
				end
		end
		def attacks (attacked)
			@attacked = Player.name
			puts "Le joueur #{self.name} attaque #{attacked.name}"
			compute_to_damage = compute_damage
			  gets_dammage(compute_damage)
			 return take_damage
		end
		def compute_damage
    		return rand(1..6)
		end
		def take_damage 
			compute_to_damage = compute_damage
			puts "il lui inflige #{compute_to_damage} points de dommages"
		end
	end

	


		
