require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#initialize' do
    it 'starts with a balance of zero' do
      expect(account.balance).to eq(0.00)
    end

    it 'starts with no credit history' do
      expect(account.credit).to eq(0.00)
    end

    it 'starts with no debit history' do
      expect(account.debit).to eq(0.00)
    end

    it "opens with today's date" do
      expect(account.date).to eq(Date.today.strftime("%d/%m/%Y"))
    end
  end
end
