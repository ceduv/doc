tab = [2,4,7,8,10]

def iq_test(numbers)
    rep = 0 
        numbers.chars.map do |x|
            if x.to_i.odd?
                rep += 1
                return rep
                break
            else
                rep += 1
            end
        end
end

iq_test(tab)