require_relative 'account'
require 'Date'


class Statement

attr_reader :display
  # responsible for displaying the statement
  def initialize
    @display = []
  end

  def format
    #responsible for formatting
    puts "date || credit || debit || balance"
      @display.map do |transaction|
      return @display.join(" || ")
    end
  end
end
