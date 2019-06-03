require_relative 'statement'

class Account

  # responsible for handling the transactions: deposit, withdraw, balance.
  attr_reader :balance, :credit, :debit, :date

  def initialize
    @balance = 0.00
    @credit = []
    @debit = []
    @date = Date.today.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    # adds to credit and adds to balance
    @balance += amount
    @credit << amount
  end

  def withdraw(amount)
    # deducts  from balance and adds to debit
    @balance -= amount
    @debit << amount
  end

  def statement
    #shows statement
  end

end
