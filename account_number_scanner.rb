class AccountNumberScanner
  attr_reader :account_number

  def initialize(account_number)
    @account_number = account_number
  end

  def scanner
    00000000
  end
end
