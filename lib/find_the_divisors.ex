defmodule FindTheDivisors do
  def divisors(integer) do
    findDivisors(integer,Enum.to_list(2..(integer-1)))
    |> response(integer)
  end
  def findDivisors(integer, list_possible_divisors) do
    #Enum.with_index(list_possible_divisors) #This line returns all values as a Map with its index
    Enum.filter(list_possible_divisors, fn x ->
      rem(integer, x) == 0
    end)
  end

  defp response(divisors, integer) do
    if Enum.any?(divisors) do
      divisors
    else
      "#{integer} is prime"
    end
  end
end
