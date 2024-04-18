require 'bundler'
Bundler.require

require_relative 'board'
require_relative 'player'
require_relative 'board_case'

class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @b = Board.new
    rounds
  end
  
  def rounds
    until @player1.statu == "winner" || @player2.statu == "winner" do
        puts "#{@player1.name}, veuillez entrer les coordonnées de la case sur laquelle vous voulez poser  votre x:"
        print "> " 
        input = gets.chomp.downcase
        verify_if_the_input_is_valid_or_not(input)
        case input
        when input = "a1"
          @b.a1.put_x
        when input = "a2"
          @b.a2.put_x
        when input = "a3"
          @b.a3.put_x
        when input = "b1"
          @b.b1.put_x
        when input = "b2"
          @b.b2.put_x
        when input = "b3"
          @b.b3.put_x
        when input = "c1"
          @b.c1.put_x
        when input = "c2"
          @b.c2.put_x
        when input = "c3"
          @b.c3.put_x
        end
        @b.envoi_info_to_view
        break if verify_if_the_player_is_the_winner_or_not == true
        puts "#{@player2.name}, veuillez entrer les coordonnées de la case sur laquelle vous voulez poser votre o:"
        print "> "
        input = gets.chomp.downcase
        verify_if_the_input_is_valid_or_not(input)
        case input
        when input = "a1"
          @b.a1.put_o
        when input = "a2"
          @b.a2.put_o
        when input = "a3"
          @b.a3.put_o
        when input = "b1"
          @b.b1.put_o
        when input = "b2"
          @b.b2.put_o
        when input = "b3"
          @b.b3.put_o
        when input = "c1"
          @b.c1.put_o
        when input = "c2"
          @b.c2.put_o
        when input = "c3"
          @b.c3.put_o
        end
        @b.envoi_info_to_view
        break if verify_if_the_player_is_the_winner_or_not == true
    end
  end

  def verify_if_the_player_is_the_winner_or_not
    if (@b.a1.state == @b.a2.state && @b.a2.state == @b.a3.state && @b.a3.state != " " ) || (@b.b1.state == @b.b2.state && @b.b2.state == @b.b3.state && @b.b3.state != " ") || (@b.c1.state == @b.c2.state && @b.c2.state == @b.c3.state && @b.c3.state != " ") || (@b.a1.state == @b.b1.state && @b.b1.state == @b.c1.state && @b.c1.state != " ") || (@b.a2.state == @b.b2.state && @b.b2.state == @b.c2.state && @b.c2.state != " ") || (@b.a3.state == @b.b3.state && @b.b3.state == @b.c3.state && @b.c3.state != " ") || (@b.a1.state == @b.b2.state && @b.b2.state == @b.c3.state && @b.c3.state != " ") || (@b.a3.state == @b.b2.state && @b.b2.state == @b.c1.state&& @b.c1.state != " ") 
      puts "VOUS AVEZ GAGNE!!"
      return true
      
    elsif @b.a1.state != " " && @b.a2.state != " " && @b.a3.state != " " && @b.b1.state != " " && @b.b2.state != " " && @b.b3.state != " " && @b.c1.state != " " && @b.c2.state != " " && @b.c3.state != " " 
      puts "EGALITE!"
      puts ""
      return true
    end
  end

  def verify_if_the_input_is_valid_or_not(input)
    if input != "a1" && input != "b1" && input != "c1" && input != "a2" && input != "b2" && input != "c2" && input != "a3" && input != "b3" && input != "c3"
      puts "Merci de taper une coordonnée valide pour jouer. La punission pour avoir taper n'importe quoi est que vous passez votre tour."
    end
  end
end