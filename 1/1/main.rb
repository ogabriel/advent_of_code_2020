nums = File.readlines("#{__dir__}/../../input.txt")

TARGET = 2020

nums.map! do |num|
  num.to_i
end

nums.sort!

num1 = 0
num2 = 0

nums.each do |temp_num1|
  nums.reverse_each do |temp_num2|
    if temp_num1 + temp_num2 == 2020
      num1 = temp_num1
      num2 = temp_num2

      break
    end
  end
end

product = num1 * num2

puts "the product of both nums is #{product}"
