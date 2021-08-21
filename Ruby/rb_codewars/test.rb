string = "abcdefg_"

def solution(str)
    str.scan(/.{1,2}/).each do |x|
        if x.length.even?
            puts x
        else
            puts x+"_"
        end
    end
end

solution(string)