defmodule SpinningWords do
  def spin_words(message) do
    message
    |> String.split(" ")
    |> Enum.map(&(if String.length(&1) >= 5, do: String.reverse(&1), else: &1))
    |> Enum.join(" ")
  end
end
