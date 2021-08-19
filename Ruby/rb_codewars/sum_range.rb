#=========================
#         SUM RANGE

def get_sum(a,b)
    if b > a
        sum = (a..b).sum
    else
        sum = (b..a).sum
    end
    sum
end

#---
# ternaire
def get_sum(a,b)
    return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

#---
# ???
def get_sum(a,b)
    Range.new(*[a, b].sort).reduce(:+)
end