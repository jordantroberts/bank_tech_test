# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { described_class.new }
  date = Date.today.strftime('%d/%m/%Y')

  describe '#print' do
    it 'prints statement' do
      credit = '10.00'
      debit = debit
      balance = '10.00'
      transaction = [date, credit, debit, balance]
      expect(statement.print(transaction)).to eq Date.today.strftime('%d/%m/%Y') + ' || 10.00 ||  || 10.00'
    end
  end
end
