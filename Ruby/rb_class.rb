#==================================================
#               CLASS


#       instance variables      =>      @
#       variables de classe     =>      @@
#         sont comme des variables d'instance, mais au lieu d'appartenir à une instance d'une classe, elles appartiennent à la classe elle-même.
#       Global variables        =>      $
#         rendre une variable globale à partir d'une méthode ou d'une classe "$"

#------------------------------------------


$test = "a"                       # VARIABLE GLOBALE

class Eleve

  attr_accessor :notes, :nom      # getter + setter
  attr_reader                     # getter    # accessible
  attr_writer                     # setter    # mofifiable depuis ext

  MOYENNE = 10
  @@majorite = 18                 # VARIABLE DE CLASSE
  MAJORITEUS = 21                 # CONSTANTE

  def initialize(name, age)       # CONSTRUCTOR
    @name = name
    @age = age
    @notes = []                 # TABLEAU VIDE
  end

  def self.bonjour                # METHODE DE CLASS # AAA
    puts "bonjour"
  end

  def isMajeur?                   # ? -> bool
    @age >= @@majorite
  end

  def ajouterNote(note)
    @notes << note
  end

  def moyenne                     # calcul la moyenne
    somme = 0
    # @notes.each {|x|somme += x}   on itere sur le tab note et on add
    somme = @notes.reduce(:+)   #===
    moyenne = somme/@notes.length   # on / par la taille du tableau
    moyenne
  end

  def moyenne?                    # compare moyenne eleve et moyenne constante 10
    moyenne >= MOYENNE
  end

  def >(eleve)                    # permet de cree un operateur de comparaison
    moyenne> eleve.moyenne      # BBB
  end

  private

  def demo
    puts "Demo"                   # private ne peut pas etre appele depuis l ext
  end

end

Eleve.bonjour                     # AAA #pas besoin d instrancié class method
eleve1 = Eleve.new("jean",15)
eleve1.age = 18
puts "age #{eleve1.taille}"

cedric = Eleve.new("cedric",18)
cedric.ajouterNote(18)            # ajoute des notes au tableau vide
cedric.ajouterNote(15)
cedric.ajouterNote(2)

alex = Eleve.new("Alex",22)
alex.ajouterNote(18)
alex.ajouterNote(14)
alex.ajouterNote(10)

puts cedric>alex                  # BBB operateur de comparaison entre eleve
puts cedric.moyenne


#-------------------------


# compte le nombre d instance dans @@people_count

class Person

  @@people_count = 0

  def initialize(name)
    @name = name
    @@people_count += 1
  end

  def self.number_of_instances
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

  public    # can be called from outside

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

#--------------------------------------

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
