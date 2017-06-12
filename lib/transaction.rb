class Transaction

  def deposit(account, amount)
    account.balance += amount
  end

end
