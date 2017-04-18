require 'account'

describe 'balance' do

  describe Account do
    subject(:account){ described_class.new }

    it 'initializes with O balance' do
      expect(account.balance).to equal(0)
    end

  end

end
