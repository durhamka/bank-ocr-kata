class AccountNumberScanner
  attr_reader :account_number

  def initialize(account_number)
    @account_number = account_number
  end

  def scanner
    if one_match?
      111111111

    else zero_match?
      000000000
    end
  end

  private

  def zero_match?
    account_number == [' _  _  _  _  _  _  _  _  _ ',
                       '| || || || || || || || || |',
                       '|_||_||_||_||_||_||_||_||_|']
  end

  def one_match?
    account_number == ['                           ',
                       ' |  |  |  |  |  |  |  |  |',
                       ' |  |  |  |  |  |  |  |  |']
  end
end
