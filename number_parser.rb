class NumberParser
  attr_reader :number

  def parse_number
    @number = parsed_integers
  end

  private

  def parsed_integers
    zero   = ' _ ' +
             '| |' +
             '|_|'

    one    = '   ' +
             '  |' +
             '  |'

    two    = ' _ ' +
             ' _|' +
             '|_ '

    three = ' _ ' +
            ' _|' +
            ' _|'

    four  = '   ' +
            '|_|' +
            '  |'

    five  = ' _ ' +
            '|_ ' +
            ' _|'

    six   = ' _ ' +
            '|_ ' +
            '|_|'

    seven = ' _ ' +
            '  |' +
            '  |'

    eight = ' _ ' +
            '|_|' +
            '|_|'

    nine  = ' _ ' +
            '|_|' +
            ' _|'

    parsed_integers = {
      zero => 0,
      one => 1,
      two => 2,
      three => 3,
      four => 4,
      five => 5,
      six => 6,
      seven => 7,
      eight => 8,
      nine => 9
    }
  end
end
