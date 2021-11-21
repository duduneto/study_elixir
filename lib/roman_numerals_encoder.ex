defmodule ArabicToRoman do

  def solution(value) do
    Integer.to_string(value)
    |> String.split("")
    |> Enum.filter(&(&1 != ""))
    |> Enum.reverse
    |> (&mapping_value(&1, Enum.count(&1))).()
    |> Enum.join("")
  end
  defp mapping_value(enum_values, enum_size, index \\ 0, result \\ [])

  defp mapping_value(enum_values, enum_size, index, result) when index < enum_size do
    mapping_value(enum_values, enum_size, index + 1, [findRoman(index, Enum.at(enum_values, index)) | result])
  end

  defp mapping_value(_enum_values,_enum_size, _index, result) do
    result
  end

  defp findRoman(index, value) do
    case value do
      "0" -> ""
      "1" -> get_unity(index)
      "2" -> get_unity(index) <> get_unity(index)
      "3" -> get_unity(index) <> get_unity(index) <> get_unity(index)
      "4" -> get_unity(index) <> get_fifth(index)
      "5" -> get_fifth(index)
      "6" -> get_fifth(index) <> get_unity(index)
      "7" -> get_fifth(index) <> get_unity(index) <> get_unity(index)
      "8" -> get_fifth(index) <> get_unity(index) <> get_unity(index) <> get_unity(index)
      "9" -> get_unity(index) <> get_unity(index + 1)

    end
  end

  defp get_unity(unity) do
    case unity do
      0 -> "I"
      1 -> "X"
      2 -> "C"
      3 -> "M"
    end
  end

  defp get_fifth(fifth) do
    case fifth do
      0 -> "V"
      1 -> "L"
      2 -> "D"
      3 -> "V"
    end
  end



end
