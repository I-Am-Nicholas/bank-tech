require "capybara/rspec"
require 'account'
require 'date'

describe 'Bank' do

  describe Account do
    subject(:account){ described_class.new }

    it 'adjusts according to the amount deposited' do
      date = Date.new
      account.deposit(50)
      expect(account.balance).to equal(50)
      expect(page).to have_content(withdrawal_date)
    end

  end

end
