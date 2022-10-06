# Limite à 25
def limit(number)
  if number.between?(1, 25)
    1
  else
    puts 'Error: Wrong number'
    0
  end
end

# Ask for the number
def asknumber
  print 'insert number: '
  gets.chomp.to_i
end

# Création de l'half pyramid
def left_pyramid(number)
  result = []
  0.upto(number) do |i|
    result << ' ' * (number - i) + '#' * i
  end
  result
end

def right_pyramid(number)
  left_pyramid(number).map(&:reverse)
end

def full_pyramid(number)
  left = left_pyramid(number)
  right = right_pyramid(number)
  result = Array.new(number)

  0.upto(number) do |i|
    result[i] = left[i] + right[i][1..]
  end
  result
end

def wtf_pyramid(number)
  full_pyramid(number / 2) + full_pyramid(number / 2).reverse
end

nombre = asknumber
# halfpyramid(nombre) if limit(nombre) == 1
# puts left_pyramid(nombre) if limit(nombre) == 1
# puts right_pyramid(nombre) if limit(nombre) == 1
# puts full_pyramid(nombre).reverse
puts wtf_pyramid(nombre)
