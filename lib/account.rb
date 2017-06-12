require "./lib/transaction"

class Account

  attr_reader :transactions, :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @transactions << Transaction.new(amount, "credit", date)
    @balance += amount
  end

  def withdrawal(amount, date)
    raise "Insufficient funds" if @balance < amount
    @transactions << Transaction.new(amount, "debit", date)
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
    puts "date || credit || debit || balance"
  end

end
