def signup
  print 'Create a password : '
  gets.chomp
end

def login(password)
  print 'Your password : '
  ask = gets.chomp
  if ask == password
    puts 'Welcome'
    1
  else
    puts 'password denied'
    0
  end
end

def welcome
  if login == 1
    puts 'bienvenue dans ta zone secrete !'
    puts 'Votre dernier message : Lau vous envoie un message'
  end
end

def perform
  login(password)
  welcome
end

enregistrement = signup
puts perform(enregistrement)
