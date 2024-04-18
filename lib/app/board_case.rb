require 'bundler'
Bundler.require

class BoardCase
  attr_accessor :case_name, :state

  def initialize(case_num)
    @case_name = case_num
    @state = " "
  end

  def get_case_state 
    puts @state
  end

  def put_x
    if @state == "x" || @state == "o"
      puts "NONONO! Interdit! Passe ton tour!"
    else
    @state = "x"
    end
  end

  def put_o
    if @state == "x" || @state == "o"
      puts "NONONO! Interdit! Passe ton tour!"
    else
      @state = "o"
    end
  end
end
