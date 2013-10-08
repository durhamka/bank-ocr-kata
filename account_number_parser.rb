class AccountNumberParser

  def self.parse(lines)
    account_numbers = []
    lines.each_with_index do |line, index|
      key = index / 3
      account_numbers[key] ||= []
      account_numbers[key] << line
    end

    account_numbers.map do |account_number|
      AccountNumberParser.new(account_number)
    end
  end

  attr_reader :account_number

  def initialize(account_number)
    @account_number = account_number
  end

  def parse
    account_number.map do |line|
      line.scan(/.{3}/)
    end
  end

  def location
    parse.

  end
end
