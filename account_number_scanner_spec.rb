require 'rspec'
require './account_number_scanner'

describe AccountNumberScanner do
  describe '#scanner' do
    it 'returns the integers for the account number' do
      account_number = _  _  _  _  _  _  _  _  _
                      | || || || || || || || || |
                      |_||_||_||_||_||_||_||_||_|
      expect(account_number.scanner).to eq(9)

    end
  end
end
