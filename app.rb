require 'bundler'
Bundler.require

require_relative 'lib/app/player'
require_relative 'lib/app/game'

class Application
  @@game_counter = 0
  

    def initialize
      check_if_ppl_want_to_play_again = "oui"
    while check_if_ppl_want_to_play_again == "oui"
      @@game_counter += 1
      puts ""
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      puts "============================ Jeu de morpion claqué ====================================="
      puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
      puts ""
      puts "============================ CHARGEMENT DE LA PARTIE \e[33mN°#{@@game_counter}.\e[0m =============================="
      for i in (0 .. 43)
      print " ."
      sleep 0.1
      end
      puts ""
      Game.new
      puts ""
      puts "voulez vous rejouer? (Si oui marquer 'oui' en minuscules, en toutes lettres et sans fautes!)"
      puts ""
      check_if_ppl_want_to_play_again = gets.chomp
      end

  end
  
end

Application.new