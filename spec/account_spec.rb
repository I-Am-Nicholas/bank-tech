require 'account'

describe 'balance' do

  describe Account do
    subject(:account){ described_class.new }

    it 'initializes with O balance' do
      expect(account.balance).to equal(0)
    end

    it 'adjusts according to the amount deposited' do
      account.deposit(50)
      expect(account.balance).to equal(50)
    end

    it 'adjusts according to the amount withdrawn' do
      account.deposit(50)
      account.withdraw(25)
      expect(account.balance).to equal(25)
    end

  end

end
