require "./lib/transaction"
require "./lib/account"

describe Transaction do

  it "has a balance" do
    transaction = Transaction.new(500, "credit")
    expect(transaction.amount).to eq 500
  end

  it "has a named type" do
    account = Account.new
    account.deposit(100)
    expect(account.transactions[0].type).to eq "credit"
  end

end
