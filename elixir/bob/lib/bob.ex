defmodule Bob do
  def isNotGibberish(input) do
    String.upcase(input) !== String.downcase(input)
  end

  def isShouting(input) do
    String.upcase(input) == input && isNotGibberish(input)
  end

  def hey(rawInput) do
    input = String.trim(rawInput)
    cond do
      String.trim(input) == "" ->
        "Fine. Be that way!"
      String.at(input, -1) == "?" && isShouting(input) ->
        "Calm down, I know what I'm doing!"
      isShouting(input) ->
        "Whoa, chill out!"
      String.ends_with?(input, "?") ->
        "Sure."
      true ->
        "Whatever."
    end
  end
end