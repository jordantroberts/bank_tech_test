# frozen_string_literal: true

require 'account'

describe 'user cannot take out more money than they have' do
  it 'stops user from being overdrawn' do
    account = Account.new
    expect(account.withdraw(1.00)).to eq 'You do not have enough money'
  end
end
