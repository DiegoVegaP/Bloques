# 10.times do |number|
#  puts "5 x #{number+1} = #{(number+1*5)}"
# end

# 10.times do |number| puts "5 x #{number+1} = #{(number+1*5)}" end

# print_table  = Proc.new do |number|
#   puts "5 x #{number+1} = #{(number+1)*5}"
# end
# 10.times &print_table

# full_name = Proc.new do |firts, last|
#   puts "#{last}, #{firts}"
# end
# full_name.call('Diego', 'Vega')

 full_name =Proc.new do |first: name, last: surname|
   puts "#{last}, #{first}"
 end
# full_name.call(first: 'Diego', last: 'Vega')
# full_name.call(last: 'Vega', first: 'Diego')

# def load_users(database, &block)
#  puts database
#  puts block.class
#  puts block.source_location
#  puts block.parameters
#  block.call(first: 'Diego', last: 'Vega' )
# end
# load_users('users.sqlite3', &full_name)

# users = ['Diego', 'Enrique', 'Jose', 'Eduardo']
# def last_user(users)
#  yield(users.last.downcase) if block_given?
#  users.last
# end
# last_user(users) do |user|
#  puts "El Ultimo Usuario es: #{user}"
# end
# puts last_user(users)

# full_name = Proc.new do |first: 'Maria', last: 'Sanchez', **list|
#   puts "#{last}, #{first}: #{list}"
# end

# full_name.call(first: 'Ramon', last: 'Ayala', birth:1982, male: true)
# full_name.call(birth: 1990, female: true)

block_proc = proc  do |a, b|
  [a, b]
end
block_lambda =lambda do |a, b|
  [a,b]
end
p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', false])
#p block_lambda.call('A', true, 2)
#p block_lambda.call('A')
#p block_lambda.call(['A', false])
p block_proc.lambda?
p block_lambda.lambda?