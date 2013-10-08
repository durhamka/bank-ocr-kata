require './number_parser'

class AccountNumberScanner
  attr_reader :account_number

  def initialize(account_number)
    @account_number = account_number
  end

  def scanner
    if account_number == ' _ | ||_|'
      "0"
  end

  private

end
