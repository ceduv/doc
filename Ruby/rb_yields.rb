#==============================================
#                    YIELD 


# trad => produit/recolte/rapport
# (block in method)

def block_test
    puts "We're in the method!"
    puts "Yielding to the block..."
    yield
    puts "We're back in the method!"
  end
  block_test { puts ">>> We're in the block!" }

    #    We're in the method!
    #    Yielding to the block...
    #    >>> We're in the block!
    #    We're back in the method!

###
def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  end
  yield_name("Eric") { |n| puts "My name is #{n}." }
  yield_name("Ced") { |n| puts "My name is #{n}." }

    #    In the method! Let's yield.
    #    My name is Kim.
    #    In between the yields!
    #    My name is Eric.
    #    Block complete! Back in the method.  ###complete end restart
    #    In the method! Let's yield.
    #    My name is Kim.
    #    In between the yields!
    #    My name is Ced.
    #    Block complete! Back in the method.

###
def double(n)
    puts "in method"
    yield(n)
  end
  double(2) {|t| puts t*2}
  double(3) {|t| puts t*2}

    #   in method
    #   4
    #   in method
    #   6