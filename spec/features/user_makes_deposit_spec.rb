# frozen_string_literal: true

require 'account'

describe 'user can make a deposit transaction' do
  it 'user deposits money' do
    account = Account.new
    account.deposit(10.00)
    account.complete_transaction
    expect(account.statement.display).to eq [[Date.today.strftime('%d/%m/%Y'), '10.00', '', '10.00']]
  end
end
