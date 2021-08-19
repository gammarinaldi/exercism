defmodule SecretHandshake do
  import Bitwise

  @flags_actions %{
    0b1 => "wink",
    0b10 => "double blink",
    0b100 => "close your eyes",
    0b1000 => "jump"
  }

  @reverse 0b10000

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    secret_handshake =
      Enum.reduce(@flags_actions, [], fn {flag, command}, acc ->
        if (flag &&& code) == flag, do: [command] ++ acc, else: acc
      end)

    if (code &&& @reverse) == @reverse,
      do: secret_handshake,
      else: Enum.reverse(secret_handshake)
  end
end