# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { described_class.new }

  describe '#print' do
    it 'prints statement' do
      transaction = [Date.today.strftime('%d/%m/%Y'), '10.00', '', '10.00']
      expect(statement.print(transaction)).to eq Date.today.strftime('%d/%m/%Y') + ' || 10.00 ||  || 10.00'
    end
  end
end
