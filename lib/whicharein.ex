defmodule Whicharein do

  # Solution to KATA 3 on Elixir Language

  def in_array(array1, array2) do
    Enum.filter(array1, fn itemArray1 ->
      Enum.any?(array2, &(String.contains?(&1, itemArray1)))
    end)
    |> Enum.sort()
  end

end
