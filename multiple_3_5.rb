def multiple_3_5
  multiple = 0
  for i in 1..1000
    if (i % 3).zero? || (i % 5).zero?
      multiple += i
    end
  end
  multiple
end

puts multiple_3_5
