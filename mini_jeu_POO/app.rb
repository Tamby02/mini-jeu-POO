require 'bundler'
Bundler.require

require_relative 'lib/app_1'
require_relative 'lib/app_2'

player1 = Player.new("Josiane")
player2 = Player.new("José")
puts "A ma droite #{player1.name}"
puts "A ma gauche #{player2.name}"


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
	#puts "GAME OVER"
end

#binding.pry
