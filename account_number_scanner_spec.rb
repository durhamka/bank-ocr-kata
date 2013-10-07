require 'rspec'
require './account_number_scanner'

describe AccountNumberScanner do
  describe '#scanner' do
    context 'for all zeros' do
      it 'returns the integers for the account number' do
        account_number = [' _  _  _  _  _  _  _  _  _ ',
                          '| || || || || || || || || |',
                          '|_||_||_||_||_||_||_||_||_|']
        account_number_scanner = AccountNumberScanner.new(account_number)

        expect(account_number_scanner.scanner).to eq(000000000)
      end
    end

    context 'for all ones' do
      it 'returns the integers for the account number' do
        account_number = ['                           ',
                          ' |  |  |  |  |  |  |  |  |',
                          ' |  |  |  |  |  |  |  |  |']

        account_number_scanner = AccountNumberScanner.new(account_number)

        expect(account_number_scanner.scanner).to eq(111111111)
      end
    end
  end
end
