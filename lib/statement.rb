# frozen_string_literal: true

require_relative 'account'
require 'Date'

class Statement
  def print(transaction)
    puts 'date || credit || debit || balance'
    transaction.join(' || ')
  end
end
