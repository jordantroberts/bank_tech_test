require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#initialize' do
    it 'starts with a balance of zero' do
      expect(account.balance).to eq(0.00)
    end

    it 'starts with no credit history' do
      expect(account.credit).to eq ""
    end

    it 'starts with no debit history' do
      expect(account.debit).to eq ""
    end

    it "opens with today's date" do
      expect(account.date).to eq(Date.today.strftime("%d/%m/%Y"))
    end

    it "has an empty transaction history" do
      expect(account.transaction).to eq []
    end

    it "has a new statement" do
      expect(account.statement).to be_an_instance_of Statement
    end

  end

  describe '#deposit' do
    it 'updates the balance' do
      account.deposit(10.00)
      expect(account.balance).to eq(10.00)
    end

    it 'updates the credit' do
      account.deposit(10.00)
      expect(account.credit).to eq "10.00"
    end
  end

  describe '#withdraw' do
    it 'updates the balance' do
      account.deposit(10.00)
      account.withdraw(5.00)
      expect(account.balance).to eq(5.00)
    end

    it 'updates the debit' do
      account.deposit(10.00)
      account.withdraw(2.00)
      expect(account.debit).to eq "2.00"
    end
  end

  describe '#complete_transaction' do
    it 'adds the data from a transaction into a transaction array' do
      account.deposit(10.00)
      expect(account.transaction).to eq []
    end 
  end

  describe '#update_statement' do
    it 'adds single transaction to the statement' do
      account.deposit(10.00)
      account.complete_transaction
      expect(account.statement.display).to eq [[Date.today.strftime("%d/%m/%Y"), "10.00", "", 10.00]]
    end
  end
end
