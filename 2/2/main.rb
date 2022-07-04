passwords = File.readlines("#{__dir__}/../input.txt")

count =
  passwords.count do |policy_and_password|
    interval_1, interval_2, letter, _, password = policy_and_password.split(/:|-|\ /)

    [password[interval_1.to_i - 1] == letter, password[interval_2.to_i - 1] == letter].one?
  end

puts "the number of valid passwords are: #{count}"
