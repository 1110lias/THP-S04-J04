require 'bundler'
Bundler.require

require_relative 'board_case'
require_relative '../views/board_view'

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    @a1 = BoardCase.new("a1")
    @a2 = BoardCase.new("a2")
    @a3 = BoardCase.new("a3")
    @b1 = BoardCase.new("b1")
    @b2 = BoardCase.new("b2")
    @b3 = BoardCase.new("b3")
    @c1 = BoardCase.new("c1")
    @c2 = BoardCase.new("c2")
    @c3 = BoardCase.new("c3")
    envoi_info_to_view
  end
  
  def envoi_info_to_view
    array_case = [@a1.state,@a2.state,@a3.state,@b1.state,@b2.state,@b3.state,@c1.state,@c2.state,@c3.state]
    BoardView.new(array_case)
  end
end
