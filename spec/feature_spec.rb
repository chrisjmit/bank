require './lib/account'
require './lib/transaction'

describe "Features" do

  context "A customer making a deposit" do
    it "can see funds in their account" do
      account = Account.new
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end
  end

  context "A customer withdrawing funds" do
    it "sees the balance reduce" do
      account = Account.new
      account.deposit(1000)
      account.withdrawal(500)
      expect(account.balance).to equal(500)
    end
  end

  context "A customer asks for a statement" do
    xit "shows the date, transaction type, amount and balance" do
      account = Account.new
      account.deposit(1000)
      account.deposit(2000)
      account.withdrawal(500)
    expect(account.statement).to eq ("date || credit || debit || balance
      14/01/2012 || || 500.00 || 2500.00
      13/01/2012 || 2000.00 || || 3000.00
      10/01/2012 || 1000.00 || || 1000.00")
    end
  end

end
