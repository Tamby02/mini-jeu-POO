require 'pry'
require_relative 'app_1.rb'
class HumanPlayer < Player
	attr_accessor :weapon_level
		def initialize (name_of_player)
			@name = name_of_player
			@life_points = 100
			@weapon_level = 1
		end
		def show_state
		puts "#{self.name} a #{self.life_points} niveau de vie et une arme de niveau #{@weapon_level}"
		end
		def compute_damage
    	rand(1..6) * @weapon_level
  		end
  		def search_weapon
  			dice= rand (1..6)
  			@weapon_level = dice
  			puts "Tu as trouvé une arme de niveau #{@weapon_level} "
  			if @weapon_level > 1
  				"Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
  			else 
  				puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
  			end
		end
		def search_health_pack
			dice2= rand (1..6)
			if dice2 == 1 
				puts "Tu n'as rien trouvé... "
			elsif dice2 >2 && dice2<5
				puts "Bravo, tu as trouvé un pack de +50 points de vie !"
				(@life_points) == (@life_points.to_i + 50)

			else dice2 == 6
				puts "Waow, tu as trouvé un pack de +80 points de vie !"
				@life_points = @life_points + 80
			end
			if @life_points>100
				return @life_points =100
			else 
				@life_points
			end
		end
end


puts " "
puts "    ====================================================="
puts "    ##   Bienvenue sur 'ILS VEULENT TOUS MA POO!!   	##"
puts "    '''''''''''''''''''''''''''''''''''''''''''''''''''''"
puts "    ## Le but du jeu est d'être le dernier survivant!!! ##"
puts "    ======================================================"
puts " "

puts "Veuillez donner le nom des joueurs, svp:"
puts "1er Joueur:"
player1= HumanPlayer.new (gets.chomp)
puts " 2eme Joueur: "
player2= HumanPlayer.new (gets.chomp)

#@@ennemies = []
#@@ennemies << [player1, player2]

while player1.life_points>0 && player2.life_points>0 
print "Voici l'état de chaque joueur: "
player1.show_state
print " et "
player2.show_state
#@life_points += 1
	
puts "Fight!!!"
puts "Passons à la phase d'attaque"
puts player1.attacks(player2)
puts "#{player2.name} ne va pas se laisser faire"
puts player2.attacks(player1)
break if player1.life_points == 0 || player2.life_points == 0

end
=begin
puts "Quelle action veux-tu effectuer?" 
puts "a - chercher une meilleure arme"
puts "s - chercher à se soigner"
reponse = gets.chomp.to_s.downcase
if reponse == "a"
	puts @@ennemies[0].search_weapon
else reponse == "s"
	puts @@ennemies[0].search_health_pack
end
=end


