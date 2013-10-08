class AccountNumberParser


  def self.parse(lines)
    account_numbers = []
    lines.each_with_index do |line, index|
      key = index / 4
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

  def integers
    digits.map do |digit|
      digit_map[digit]
    end
  end

  private

  def parse
    @parsed_numbers ||= account_number.map do |line|
      line.scan(/.{3}/)
    end
  end

  def digits
    top.zip(middle, bottom).map(&:join)
  end

  def top
    parse[0]
  end

  def middle
    parse[1]
  end

  def bottom
    parse[2]
  end

  def digit_map
    {
      ' _ ' +
      '| |' +
      '|_|' => "0",

      '   ' +
      '  |' +
      '  |' => "1",

      ' _ ' +
      ' _|' +
      '|_ ' => "2",

      ' _ ' +
      ' _|' +
      ' _|' => "3",

      '   ' +
      '|_|' +
      '  |' => "4",

      ' _ ' +
      '|_ ' +
      ' _|' => "5",

      ' _ ' +
      '|_ ' +
      '|_|' => "6",

      ' _ ' +
      '  |' +
      '  |' => "7",

      ' _ ' +
      '|_|' +
      '|_|' => "8",

      ' _ ' +
      '|_|' +
      ' _|' => "9"
  }
end
end
