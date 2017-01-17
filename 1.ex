# Create a list from 1.999 using a range to list conversion
# Do a filter on this list and remove the values which are not multiples of 3 or 5
# Calculate the sum of this list.

oneToThousandList = Enum.filter (Enum.to_list 1..999), fn(x) -> rem(x, 3) == 0 or rem(x, 5) == 0 end
IO.puts Enum.sum(oneToThousandList)