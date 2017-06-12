require "./lib/account"

describe Account do
  subject(:account) { described_class.new }

  it "has a balance" do
    transaction = Transaction.new
    transaction.deposit(account, 1000)
    expect(subject.balance).to eq 1000
  end

end
