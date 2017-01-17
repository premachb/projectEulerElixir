defmodule Euler2 do
	def increment_accumulator(accumulator, value) when rem(value, 2) == 0 do
		accumulator + value
	end

	def increment_accumulator(accumulator, value) do
		accumulator
	end

	def build_list(list, accumulator) do
		last_two_values = Enum.take(list, -2)
		sum_last_two_values = Enum.sum(last_two_values)
		if(Enum.sum(tl(last_two_values)) > 4000000) do
			accumulator
		else
			build_list(list ++ [sum_last_two_values], increment_accumulator(accumulator, sum_last_two_values))
		end
	end
end

IO.puts(Euler2.build_list([1,2], 2))