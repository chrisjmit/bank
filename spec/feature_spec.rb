require './lib/account'
require './lib/transaction'

describe "Features" do

  context "A customer" do
    it "can make a deposit to a bank account" do
      account = Account.new
      account.deposit(1000)
    expect(account.balance).to eq(1000)
    end
  end



end
