#==================================================
#               SYNTHAXE 1 ligne


require 'prime'

def first_n_primes(n)
  unless n.is_a? Integer
    return "n must be an integer."
  end
  if n <= 0
    return "n must be greater than 0."
  end
  return Prime.first n
end
first_n_primes(10)

#===

require 'prime'
def first_n_primes(n)
    # return en premier condition ensuite ,
    # pas de end sur une ligne
    return "n must be an integer." unless n.is_a? Integer 
    return "n must be greater than 0." if n <= 0
    Prime.first n #return optionelle
end
first_n_primes(10)

#------------------------------------

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end 
print (1..100).to_a.select(&multiples_of_3)
#===
multiples_of_3 = Proc.new {|n| n % 3 == 0}
print (1..100).to_a.select(&multiples_of_3)

#------------------------------------

class Monkey
end
#===
class Monkey; end


#==============================================
#               IF | UNLESS

puts "hello" if true
puts "hello" unless false # renvoi meme resultat


#==================================================

#               EVITEZ BLOCK INUTILE


a = ["1", "2", 3]

a.map{ |n| n.to_i}
#===
# symbole qui est la methode a appelé sur chaque element
a.map{&:to_i}


#==================================================

#                 TERNAIRE


# if
puts true ? "True!" : "False!"
puts 1 < 2 ? "One is less than two!" :""


#==================================================

#                 THEN ENSUITE


puts "Hello there!"
greeting = gets.chomp

case greeting # syntaxe en une ligne
  when greeting == "English" then puts "Hello!"
  when greeting == "French" then puts "Bonjour!"
  when greeting == "German" then  puts "Guten Tag!"
  when greeting == "Finish" then  puts "Haloo!"
  else puts "I don't know that language!"
end
# ===
case greeting
  when greeting == "English" 
  puts "Hello!"
  when greeting == "French" 
   puts "Bonjour!"
  when greeting == "German"  
  puts "Guten Tag!"
  when greeting == "Finish" 
  puts "Haloo!"
  else 
  puts "I don't know that language!"
end


#==================================================

#             PARAMETRE OPTIONEL

# vous pouvez passer un ou deux arguments à initialiser ;
# si vous passez deux, il utilise votre argument balance pour définir @balance
# sinon balance=100
def initialize(name, balance=100)
  @name = name
  @balance = balance


#==================================================

#               _ & GRANDS NBRS

1_000_000 = 1000000