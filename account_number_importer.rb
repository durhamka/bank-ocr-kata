require './account_number_parser'

class AccountNumberImporter
  attr_reader :data

  def initialize(file)
    @data = File.open(file) do |file|
      file.read
    end
  end

  def account_numbers
    AccountNumberParser.parse(lines)
  end

  private

  def lines
    data.lines
  end
end
