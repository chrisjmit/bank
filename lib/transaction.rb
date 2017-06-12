require 'date'

class Transaction

  attr_reader :amount, :type, :date

  def initialize(amount, type, date)
    @type = type
    @amount = amount
    @date = date
  end

end
