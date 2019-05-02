class Person
    attr_accessor :name
    def initialize(name)
      @name = name
    end
  end
  
  person = Person.new("Ada")
  puts person.name