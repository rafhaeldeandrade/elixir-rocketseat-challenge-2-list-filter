defmodule ListFilter do
  def call(list), do: odd_numbers_count(list)

  defp odd_numbers_count(list) do
    number_list =
      Enum.map(list, fn string ->
        case Integer.parse(string) do
          {int, _} -> int
          :error -> 0
        end
      end)

    Enum.count(number_list, fn elem -> rem(elem, 2) != 0 end)
  end
end
