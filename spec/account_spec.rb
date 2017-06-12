require "./lib/account"

describe Account do
  subject(:account) { described_class.new }

  it "has a balance" do
    subject.deposit(1000)
    expect(subject.balance).to eq 1000
  end

  it "has a way to store a transaction" do
    expect(subject.transactions).to be_a(Array)
  end

  it "stores a transaction" do
    subject.deposit(2000)
    expect(subject.transactions.length).to eq 1
  end

end
