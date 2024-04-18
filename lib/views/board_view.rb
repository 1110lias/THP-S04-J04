require 'bundler'
Bundler.require

class BoardView 
  def initialize(array_de_cases)
    puts "                  1     2     3   "
    puts "               -------------------"
    puts "            A  |  #{array_de_cases[0]}  |  #{array_de_cases[1]}  |  #{array_de_cases[2]}  |"
    puts "               -------------------"
    puts "            B  |  #{array_de_cases[3]}  |  #{array_de_cases[4]}  |  #{array_de_cases[5]}  |"
    puts "               -------------------"
    puts "            C  |  #{array_de_cases[6]}  |  #{array_de_cases[7]}  |  #{array_de_cases[8]}  |"
    puts "               -------------------"
    puts ""
  end
end
