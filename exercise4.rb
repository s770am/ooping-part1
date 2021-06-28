class PaperBoy

    def initialize(name)
@name = name
@experience = 0
@earnings = 0
@quota = 50
    end

    attr_reader :earnings

    # i am only making it a method because that is what the assiment says to do 
def quota
return @quota
end

def pay(fquota)
 
     if @quota > fquota
         puts "you fail to meet your quota - 2 dollars"
         @earnings -= 2
     end
    if @quota < fquota
@earnings += ((fquota - @quota) * 0.25)
puts "i have gained bonus #{earnings}"
    end
    @quota += fquota / 2
    @experience += fquota
    @earnings += fquota * 0.25
    return fquota * 0.25 
end

def deliver(start_address, end_address)

if start_address < end_address
pay(end_address - start_address + 1)
else 
    pay(start_address - end_address + 1)
end

end

def report
puts "i am #{@name}, i've delivered #{@experience} papers and earned #{@earnings} dollars"
end


end


tommy = PaperBoy.new("tommy")

tommy.quota # => 50
tommy.deliver(101, 160) # => 17.5
tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

tommy.quota # => 80
tommy.deliver(1, 75) # => 16.75
tommy.earnings #=> 34.25
tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"