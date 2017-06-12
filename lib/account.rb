class Account

  attr_reader :transactions
  attr_accessor :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new(amount)
    @transactions << transaction
    @balance += amount
  end

  private

end
