#               CLASS

#       instance variables      =>      @
#       variables de classe     =>      @@
    #   sont comme des variables d'instance, mais au lieu d'appartenir à une instance d'une classe, elles appartiennent à la classe elle-même.
#       Global variables        =>      $
    #   rendre une variable globale à partir d'une méthode ou d'une classe "$"

#   INITIALIZE
class Person
    def initialize(name)
    @name = name
    end
end
matz = Person.new("Yukihiro")

#-------------------------
# compte le nombre d instance dans @@people_count

class Person
    # Set your class variable to 0 on line 3
      @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      return @@people_count
    end
  end
  
  matz = Person.new("Yukihiro")
  dhh = Person.new("David")
  
  puts "Number of Person instances: #{Person.number_of_instances}"

  
#-------------------------

  class Message

    @@messages_sent = 0     # class variable
                            
    def initialize(from,to) # methode
      @from = from          # instance variable
      @to = to
      @@messages_sent += 1
    end
  
  end

#-------------------------
#   METHOD DE CLASS

class Computer
  @@users = Hash.new
    def initialize(username,password)
      @username = username
      @password = password
      @files = Hash.new
      @@users[username] = password
    end 
    def create (filename)
        time = Time.now
        @files[filename] = time
        puts "file created : "
    end
    def Computer.get_users #method de class
      return @@users
    end
end
my_computer = Computer.new("ced","test")
#instance

#-------------------------
#   PUBLIC / PRIVATE

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

# check pin

class Account
  attr_reader:name
  attr_reader:balance
    def initialize (name, balance=100)
    @name = name
    @balance = balance
    end
public
  def display_balance(pin_number)
    if @pin == pin_number
     return true
     else
     return false
     end
  end
  def withdraw(pin_number,amount)
  if pin_number == true
    @balance -= amount
    puts "Withdrew #{amount}. New balance: $#{@balance}."
  else
    puts pin_error
  end

  end
private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end
end