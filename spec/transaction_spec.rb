require "./lib/transaction"

describe Transaction do

  it "has a balance" do
    transaction = Transaction.new(500)
    expect(transaction.amount).to eq 500
  end

end
