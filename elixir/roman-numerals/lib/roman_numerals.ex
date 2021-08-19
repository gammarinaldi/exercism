defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  @numberToRoman [
    {"M", 1000},
    {"CM", 900},
    {"D", 500},
    {"CD", 400},
    {"C", 100},
    {"XC", 90},
    {"L", 50},
    {"XL", 40},
    {"X", 10},
    {"IX", 9},
    {"V", 5},
    {"IV", 4},
    {"I", 1}]

  def numeral(0), do: ""
  def numeral(number) do
    {roman, digit} = Enum.find(@numberToRoman, fn {roman, digit} ->
      number >= digit
    end)
    roman <> numeral(number - digit) # Concat
  end
end