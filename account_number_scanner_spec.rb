require 'rspec'
require './account_number_scanner'

describe AccountNumberScanner do
  describe '#scanner' do
    context 'for one number' do
      it 'returns the integer for the account number' do
        account_number = ['   ',
                          ' | ',
                          ' | ']
        account_number_scanner = AccountNumberScanner.new(account_number)

        expect(account_number_scanner.scanner).to eq(1)
      end
    end

    context 'for all ones' do
      it 'returns the integers for the account number' do
        account_number = ['                           ',
                          ' |  |  |  |  |  |  |  |  | ',
                          ' |  |  |  |  |  |  |  |  | ']

        account_number_scanner = AccountNumberScanner.new(account_number)

        expect(account_number_scanner.scanner).to eq(111111111)
      end
    end

    context 'for 1,2,3,4,5,6,7,8,9' do
      pending 'returns the integers for the account number' do
        account_number = ['   _  _     _  _  _  _  _
                            | _| _||_||_ |_   ||_||_|
                            ||_  _|  | _||_|  ||_| _|']
        account_number_scanner = AccountNumberScanner.new(account_number)

        expect(account_number_scanner.scanner).to eq(123456789)
      end
    end
  end
end
