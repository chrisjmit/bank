require "./lib/transaction"

class Account

  attr_reader :transactions, :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @transactions << Transaction.new(amount, "credit")
    @balance += amount
  end

  def withdrawal(amount)
    raise "Insufficient funds" if @balance < amount
    @transactions << Transaction.new(amount, "debit")
    @balance -= amount
  end

  def statement
    print_header
    @transactions.each do |trans|
      puts "Date: #{trans.date} || Type: #{trans.type} || Amount: #{trans.amount} ||"
    end
  end

  private

  def print_header
    return "date || credit || debit || balance"
  end

end
