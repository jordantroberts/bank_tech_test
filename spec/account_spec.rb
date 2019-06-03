require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#initialize' do
    it 'starts with a balance of zero' do
      expect(account.balance).to eq(0.00) 
    end
  end
end
