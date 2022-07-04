passwords = File.readlines("#{__dir__}/../input.txt")

count =
  passwords.count do |policy_and_password|
    interval_1, interval_2, letter, _, password = policy_and_password.split(/:|-|\ /)

    password.count(letter).between?(interval_1.to_i, interval_2.to_i)
  end

puts "the number of valid passwords are: #{count}"
