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
        puts "\e[33m#{@player1.name}\e[0m, veuillez entrer les coordonnées de la case sur laquelle vous voulez poser votre x:"
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
        break if verify_if_the_player_is_the_winner_or_not(@player1.name) == true
        puts "\e[34m#{@player2.name}\e[0m, veuillez entrer les coordonnées de la case sur laquelle vous voulez poser votre o:"
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
        break if verify_if_the_player_is_the_winner_or_not(@player2.name) == true
    end
  end

  def verify_if_the_player_is_the_winner_or_not(the_name)
    if (@b.a1.state == @b.a2.state && @b.a2.state == @b.a3.state && @b.a3.state != " " ) || (@b.b1.state == @b.b2.state && @b.b2.state == @b.b3.state && @b.b3.state != " ") || (@b.c1.state == @b.c2.state && @b.c2.state == @b.c3.state && @b.c3.state != " ") || (@b.a1.state == @b.b1.state && @b.b1.state == @b.c1.state && @b.c1.state != " ") || (@b.a2.state == @b.b2.state && @b.b2.state == @b.c2.state && @b.c2.state != " ") || (@b.a3.state == @b.b3.state && @b.b3.state == @b.c3.state && @b.c3.state != " ") || (@b.a1.state == @b.b2.state && @b.b2.state == @b.c3.state && @b.c3.state != " ") || (@b.a3.state == @b.b2.state && @b.b2.state == @b.c1.state&& @b.c1.state != " ") 
      puts "\e[32m#{the_name}, VOUS AVEZ GAGNE!!\e[0m"
      return true
      
    elsif @b.a1.state != " " && @b.a2.state != " " && @b.a3.state != " " && @b.b1.state != " " && @b.b2.state != " " && @b.b3.state != " " && @b.c1.state != " " && @b.c2.state != " " && @b.c3.state != " " 
      puts "\e[33mEGALITE!\e[0m"
      puts ""
      return true
    end
  end

  def verify_if_the_input_is_valid_or_not(input)
    if input != "a1" && input != "b1" && input != "c1" && input != "a2" && input != "b2" && input != "c2" && input != "a3" && input != "b3" && input != "c3"
      puts "\e[31mGreat Succes!! La punission pour avoir taper n'importe quoi est que vous passez votre tour.\e[0m"
    end
  end
end