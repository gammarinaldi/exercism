defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.replace(~r/[^a-zA-Z0-9äöüÄÖÜß _-]/, "")
    |> String.replace("_", " ")
    |> String.downcase
    |> String.split
    |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end
end
