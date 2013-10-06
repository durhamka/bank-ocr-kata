require 'rspec'
require './account_number_scanner'

describe AccountNumberScanner do
  describe '#scanner' do
    it 'returns the integers for the account number' do
      account_number = [' _  _  _  _  _  _  _  _  _ ',
                        '| || || || || || || || || |',
                        '|_||_||_||_||_||_||_||_||_|']
      account_number_scanner = AccountNumberScanner.new(account_number)

      expect(account_number_scanner.scanner).to eq(000000000)
    end
  end
end
