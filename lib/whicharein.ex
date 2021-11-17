defmodule Whicharein do

  # Solution to KATA 3 on Elixir Language

  # My Answer
  def in_array(array1, array2) do
    Enum.filter(array1, fn itemArray1 ->
      Enum.any?(array2, &(String.contains?(&1, itemArray1)))
    end)
    |> Enum.sort()
  end
  # Best Practice Below
  def in_array2(searches, strings) do
    substring? = fn sub -> Enum.any?(strings, &String.contains?(&1, sub)) end

    searches
    |> Enum.filter(substring?)
    |> Enum.uniq()
    |> Enum.sort()
  end
end
