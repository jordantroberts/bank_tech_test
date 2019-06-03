require_relative 'account'
require 'Date'


class Statement

attr_reader :display
  # responsible for displaying the statement
  def initialize
    @display = []
  end

  def format
    #responsible for formatting in
    puts "date || credit || debit || balance"
    @display.map do |transaction|
      puts @display.join(" || ")
    end
    return "Here's your statement" 
  end
end
