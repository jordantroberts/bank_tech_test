# frozen_string_literal: true

require_relative 'statement'
require 'Date'

class Account
  attr_reader :balance, :credit, :debit, :date, :statement, :transaction

  def initialize(balance = 0.00, credit = '', debit = '', transaction = [])
    @balance = balance
    @credit = credit
    @debit = debit
    @transaction = transaction
  end

  def deposit(amount)
    @credit = format('%.2f', amount.to_s)
    @debit = ''
    @balance += amount
    complete_transaction
    return format('%.2f', @balance)
  end

  def withdraw(amount)
    if @balance >= amount
      @debit = format('%.2f', amount.to_s)
      @credit = ''
      @balance -= amount
      complete_transaction
      return format('%.2f', @balance)
    else
      'You do not have enough money'
    end
  end

  def view_statement
    statement = Statement.new
    statement.print(@transaction)
  end

  private

  def complete_transaction
    @transaction.push(Date.today.strftime('%d/%m/%Y'), @credit, @debit, format('%.2f', @balance))
    @transaction
  end
end
