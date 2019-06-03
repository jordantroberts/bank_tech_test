require 'statement'

describe Statement do
  let(:statement) { described_class.new }

  describe '#initialize' do
    it 'starts with an empty statement' do
      expect(statement.display).to eq []
    end
  end

end
