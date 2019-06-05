# frozen_string_literal: true

require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#deposit' do
    it 'updates the balance' do
      account.deposit(10.00)
      account.deposit(20.00)
      expect(account.balance).to eq (30.00)
    end
  end

  describe '#withdraw' do
    it 'updates the balance' do
      account.deposit(10.00)
      account.withdraw(5.00)
      expect(account.balance).to eq (5.00)
    end
  end
end
