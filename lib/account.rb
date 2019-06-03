class Account

  # responsible for handling the transactions: deposit, withdraw, balance.
  attr_reader :balance, :credit, :debit, :date

  def initialize
    @balance = 0.00
    @credit = 0.00
    @debit = 0.00
    @date = Date.today.strftime("%d/%m/%Y")
  end
end
