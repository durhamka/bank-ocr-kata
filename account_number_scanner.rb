require './number_parser'

class AccountNumberScanner
  attr_reader :account_number

  def initialize(account_number)
    @account_number = NumberParser.new
  end

  def scanner
    account_number
  end

  private

end
