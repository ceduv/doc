#========================================
#         MULTIPLE OF 3 OR 5

def solution(number)
     tab = []
     if number < 0
     0                                  # return
     else
       for i in (1...number)            # i entre 1 et number exclu

         if i % 3 == 0 || i % 5 == 0    # si divisible par 3 ou 5
         tab << i                       # on add la val au tab
         end
       end
     end
     sum = tab.inject(:+)               # sum les cal d un tab
     sum                                # return
end

# best practice

def solution(number)
    (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end