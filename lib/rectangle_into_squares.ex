defmodule Rec2sq do
  def squares_in_rect(l, w) do
    if l == w || !w || !l do
      nil
    else
      [l, w]
      |> Enum.sort()
      |> getMinimumValue([])
    end
  end

  defp getMinimumValue(sizes, squares) do
    if Enum.at(sizes, 1) - Enum.at(sizes, 0) > 0 do
      [Enum.at(sizes, 1) - Enum.at(sizes, 0), Enum.at(sizes, 0)]
      |> Enum.sort()
      |> (&getMinimumValue(&1, [Enum.at(&1, 1) | squares])).()
    else
      Enum.reverse([1 | squares])
    end
  end
end
