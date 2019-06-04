# frozen_string_literal: true

require_relative 'account'
require 'Date'

class Statement

  attr_reader :display

  def initialize
    @display = []
  end

  def format
    puts 'date || credit || debit || balance'
    @display.map do |_transaction|
      return @display.join(' || ')
    end
  end
end
