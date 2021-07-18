#========================================
#               LOOP  	

for i in (1..3) # entre 1 et 3 (3 inclu) // 1...3 (3 exclu)
  puts "I'm a refactoring master!"
end
# ===
3.times do
  puts "I'm a refactoring master!"
end

#
10.times {puts"I'm a block!" } 


#------------------------------------
# filtre <100
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|x| x<100}
youngsters = ages.select(&under_100)
puts youngsters


#------------------------------------
multiples_of_3 = Proc.new do |n|
    n % 3 == 0
end 
print (1..100).to_a.select(&multiples_of_3)
#===
multiples_of_3 = Proc.new {|n| n % 3 == 0}
print (1..100).to_a.select(&multiples_of_3)


#=========================================
#               METHODE

# COMPTER LE NOMBRE D ITERATION D UN MOT

puts "Text please: "
text = gets.chomp

# SEPARER PAR L ESPACE
words = text.split(" ")
# CREATION TABLEAU
frequencies = Hash.new(0)
# COMPTE LES MOTS ET ON LES METS DANS FREQUENCIES
words.each { |word| frequencies[word] += 1 }
# CLASSE LES COMPTES
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
# BOUCLE SUR FREQUENCIES AVEC LE COMPTE CONVERTIT EN STRING
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


#------------------------------------
# AVEC PLUSIEURS PARAMETRE *FRIENDS
def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
  
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

#------------------------------------ 
#               CAPITALIZE
  
# ON UPCASE LA 1 LETTRE
def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
end
    
capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"
    
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"
  