require 'bundler'
Bundler.require

class Player
attr_accessor :name, :statu
@@player_num = 1
  def initialize
    puts "Enter player#{@@player_num} name:"
    @name = gets.chomp
    @statu = "player"
    @@player_num += 1
    if @@player_num == 3
      @@player_num = 1
    else
    end
  end
  
  def show_player_info 
    puts @player.name
  end

  def winner
    @statu = "winner"
  end
end