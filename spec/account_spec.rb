require "./lib/account"

describe Account do
  subject(:account) { described_class.new }

  it "has a balance" do
    expect(subject).to respond_to(:balance)
  end

  it "has a way to store a transaction" do
    expect(subject.transactions).to be_a(Array)
  end

  describe "A deposit" do
    it "can update the balance" do
      subject.deposit(1000)
      expect(subject.balance).to eq 1000
    end

    it "stores a transaction" do
      subject.deposit(2000)
      expect(subject.transactions.length).to eq 1
    end
  end

  describe "A withdrawal" do
    it "can reduce the balance" do
      subject.deposit(1000)
      subject.withdrawal(500)
      expect(subject.balance).to eq(500)
    end

    it "cannot reduce balance below minimum balance" do
      expect{ subject.withdrawal(10) }.to raise_error("Insufficient funds")
    end
  end

  describe "A statement" do
    it "prints the header" do
      expect(subject.statement).to include("date || credit || debit || balance")
    end
  end

end
