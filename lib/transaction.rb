require 'date'

class Transaction

  attr_reader :amount, :type

  def initialize(amount, type)
    @type = type
    @amount = amount
    @date = Date.new
  end

end
