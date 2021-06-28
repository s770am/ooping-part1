class Cat

    def initialize(name, pfood, mtime)
@name = name
@preferred_food = pfood
@meal_time = mtime
    end

    
    def eats_at
    if  meal_time = 0
        return "I eat at 12 am"
    elsif @meal_time < 12 
        return "I eat at #{@meal_time} am"
    else 
        return "I eat at #{@meal_time - 12} pm"
    end
    end

    def meow
return "hi my name is #{@name} and " + self.eats_at
    end
end

bob = Cat.new("bob", "mice", 0)
wisker = Cat.new("wisker", "cat food", 6)
puts bob.meow

