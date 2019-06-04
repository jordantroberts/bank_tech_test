require_relative 'statement'
require 'Date'

class Account

  # responsible for handling the transactions: deposit, withdraw, balance.
  attr_reader :balance, :credit, :debit, :date, :statement, :transaction

  def initialize
    @balance = 0.00
    @credit = ""
    @debit = ""
    @date = Date.today.strftime("%d/%m/%Y")
    @transaction = []
    @statement = Statement.new
  end

  def deposit(amount)
    # adds to credit and adds to balance
    @balance += amount
    @credit = '%.2f' % amount.to_s
    @debit = ""
    return "#{'%.2f' % amount.to_f} deposited"

  end

  def withdraw(amount)
    # deducts  from balance and adds to debit
    @balance -= amount
    @debit = '%.2f' % amount.to_s
    @credit = ""
    return "#{'%.2f' % amount.to_f} withdrawn"
  end

  def complete_transaction
    @transaction = []
    @transaction.push(@date, @credit, @debit, '%.2f' % @balance)
    update_statement
    return "Transaction complete"
  end

private
  def update_statement
    @statement = statement
    @statement.display.push(@transaction)
  end
end
