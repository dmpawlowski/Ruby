class RomanNum

  Ones = {1 => 'I', 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX"}
  Tens = {1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC"}
  Hunds = {1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => "CM"}
  Thous = {1 => "M", 2 => "MM", 3 => "MMM"}

  NUMBER_MAP = { 1000 => Thous, 100 => Hunds, 10 => Tens, 1 => Ones }

  def initialize(num)
    @num = num
    @roman = ""
  end

  def convert
    convert_thousands
    convert_hundreds
    convert_tens
    convert_ones
    @roman
  end

  private

  def convert_thousands
    number_mapper(1000)
  end

  def convert_hundreds
    number_mapper(100)
  end

  def convert_tens
    number_mapper(10)
  end

  def convert_ones
    number_mapper(1)
  end

  def number_mapper(denomination)
    if @num >= denomination
      i = @num / denomination
      @num -= i * denomination
      @roman += NUMBER_MAP[denomination][i]
    end
  end

end