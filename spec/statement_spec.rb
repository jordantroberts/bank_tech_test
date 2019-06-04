require 'statement'

describe Statement do
  let(:statement) { described_class.new }

  describe '#initialize' do
    it 'starts with an empty statement' do
      expect(statement.display).to eq []
    end
  end

  describe '#format' do
    it 'prints the statement as a table' do
      account = Account.new #make a double ?
      account.deposit(15.00)
      account.complete_transaction
      expect(account.statement.format).to eq (Date.today.strftime('%d/%m/%Y'))+ " || 15.00 ||  || 15.0"
    end
  end

end
