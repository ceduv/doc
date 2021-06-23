#========================================
#               RESPOND TO 


# renvoi true si la method peut etre appelé ou false
puts age.respond_to?(:to_sym)
# false
[1, 2, 3].respond_to?(:push)
# false
puts age.respond_to?(:next) 
# true  si age=26 puts 27