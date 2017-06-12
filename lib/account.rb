require "./lib/transaction"

class Account

  attr_reader :transactions
  attr_accessor :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    credit = Transaction.new(amount, "credit", date)
    @transactions << credit
    @balance += amount
  end

  def withdrawal(amount, date)
    raise "Insufficient funds" if @balance < amount
    debit = Transaction.new(amount, "debit", date)
    @transactions << debit
    @balance -= amount
  end

  def statement
    @transactions.each do |trans|
      puts "Date: #{trans.date} || Type: #{trans.type} || Amount: #{trans.amount} ||"
    end
  end

end
