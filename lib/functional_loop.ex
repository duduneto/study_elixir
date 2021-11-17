defmodule FunctionalLoop do
  def loop(message, lastNumber) when lastNumber > 0 do
    IO.puts(message)
    loop(message, lastNumber - 1)
  end
  def loop(_msg, 0) do
    "Finish loop"
  end
end
