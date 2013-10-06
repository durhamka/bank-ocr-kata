class AccountNumberScanner
  attr_reader :account_number

  def initialize(account_number)
    @account_number = account_number
  end

  def scanner
    if zero_match?
      000000000
    end
  end

  private

  def zero_match?
    [' _  _  _  _  _  _  _  _  _ ',
     '| || || || || || || || || |',
     '|_||_||_||_||_||_||_||_||_|']
  end
end
