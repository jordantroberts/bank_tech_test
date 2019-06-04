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
      account = double(Account.new(statement = Statement.new))
      expect(account).to receive(:deposit)
      account.deposit(15.00)
      expect(account).to receive(:complete_transaction)
      account.complete_transaction
      expect(account).to receive_message_chain(:statement, :format)
      expect(account.statement.format).to eq Date.today.strftime('%d/%m/%Y') + ' || 15.00 ||  || 15.00'
    end
  end
end
