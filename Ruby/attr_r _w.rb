#           ATTR_READER ATTR_WRITER ( attr_accessor )

#   attr_accessor pour rendre une variable lisible et inscriptible d'un seul coup.

#   Nous pouvons utiliser attr_reader pour accéder à une variable et attr_writer pour la modifier
    #   variables d'instance (sous forme de symboles) à attr_reader ou attr_writer.

class Person
    attr_reader :name
    attr_writer :name
    def initialize(name)
      @name = name
    end
end

#----------------------

class Person
    def initialize(name, job)
      @name = name
      @job = job
    end
    
    def name
      @name
    end
    
    def job=(new_job)
      @job = new_job
    end
end
#===
class Person
    def initialize(name, job)
      @name = name
      @job = job
    end
    attr_reader :name
    attr_writer :job
  end
