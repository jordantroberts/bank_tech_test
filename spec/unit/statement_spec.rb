# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { described_class.new }

  describe '#initialize' do
    it 'starts with an empty statement' do
      expect(statement.display).to eq []
    end
  end

  describe '#format' do
    let(:account) { Account.new(statement = Statement.new) }
    it 'prints the statement as a table' do
      account.deposit(15.00)
      account.complete_transaction
      expect(account.statement.format).to eq Date.today.strftime('%d/%m/%Y') + ' || 15.00 ||  || 15.00'
    end
  end
end
