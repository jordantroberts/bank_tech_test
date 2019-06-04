require 'account'

describe 'user can make a withdrawal transaction' do
  it 'user withdraws money' do
    account = Account.new
    account.deposit(15.00)
    account.withdraw(10.00)
    account.complete_transaction
    expect(account.statement.display).to eq [[Date.today.strftime('%d/%m/%Y'), "", '10.00', '5.00']]
  end
end
