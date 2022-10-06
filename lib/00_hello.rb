def asks
  print 'Quel est votre prénom ? '
  gets.chomp
end

def say(firstname)
  puts "Bonjour #{firstname}"
end

name = asks
puts say(name)
