require 'rspec'
require './account_number_importer'

describe AccountNumberImporter do
  describe '#account_numbers' do
    it 'should create the right amount of account numbers' do
      file = 'fake_account_number_data.txt'
      number_importer = AccountNumberImporter.new(file)

      #each account number entry takes up three lines, so this is two account numbers
      expect(number_importer.lines.length).to eq(6)
    end
  end
end
