require 'account'

describe 'Bank' do

  describe Account do
    subject(:account){ described_class.new }

    it 'adjusts according to the amount deposited' do
      account.deposit(50)
      expect(account.balance).to equal(50)
    end

  end

end
