require 'bundler'
Bundler.require

class Player
attr_accessor :name, :statu

  def initialize
    puts "what's your name ?"
    @name = gets.chomp
    @statu = "player"
  end
  
  def show_player_info 
    puts @player.name
  end

  def winner
    @statu = "winner"
  end
end