# frozen_string_literal: true

require_relative 'statement'
require 'Date'

class Account
  attr_reader :balance, :credit, :debit, :date, :statement, :transaction

  def initialize(statement = Statement.new)
    @balance = 0.00
    @credit = ''
    @debit = ''
    @date = Date.today.strftime('%d/%m/%Y')
    @transaction = []
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @credit = format('%.2f', amount.to_s)
    @debit = ''
    "#{format('%.2f', amount.to_f)} deposited"
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      @debit = format('%.2f', amount.to_s)
      @credit = ''
      "#{format('%.2f', amount.to_f)} withdrawn"
    else
      'You do not have enough money'
    end
  end

  def complete_transaction
    @transaction = []
    @transaction.push(@date, @credit, @debit, format('%.2f', @balance))
    update_statement
  end

  def update_statement
    @statement = statement
    @statement.display.push(@transaction)
    "Transaction complete"
  end
end
