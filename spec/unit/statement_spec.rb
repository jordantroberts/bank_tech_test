# frozen_string_literal: true

require 'statement'

describe Statement do

  describe '#initialize' do
    it 'starts with an empty statement' do
      expect(subject.display).to eq []
    end
  end

  describe '#format' do
    it 'prints the statement as a table' do
      account = Account.new
      account.deposit(15.00)
      account.complete_transaction
      expect(account.statement.format).to eq Date.today.strftime('%d/%m/%Y') + ' || 15.00 ||  || 15.00'
    end
  end
end
