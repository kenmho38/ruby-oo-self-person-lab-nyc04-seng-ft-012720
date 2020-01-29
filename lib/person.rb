# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name
    
    
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness
        if @happiness  > 10
            @happiness = 10
        elsif @happiness > 0
             @happiness
        else @happiness = 0
        end
    end
    def hygiene
        if @hygiene  > 10
            @hygiene = 10
        elsif @hygiene > 0
            @hygiene    
        else @hygiene = 0
        end
    end
    def happy?
       if @happiness > 7 
        true
       else @happiness 
        false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else @hygiene
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend=Person.new)
        friend.happiness += 3
        if friend.happiness > 10
            friend.happiness = 10
        end
    self.happiness +=3
    if self.happiness > 10
        self.happiness = 10
    end
    return "Hi #{(friend.name)}! It's #{@name}. How are you?"
end

    def start_conversation(name, topic)
        if topic == "politics"
            name.happiness -=2
            if name.happiness < 0
                name.happiness
            end
            self.happiness -=2
            if self.happiness < 0
                self.happiness = 0
            end
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            name.happiness += 1
            if name.happiness > 10
                name.happiness = 10
            end
            self.happiness += 1
            if self.happiness > 10
                self.happiness = 10 
            end
            return "blah blah sun blah rain"
        end
        return "blah blah blah blah blah"
    end
end






p1 = Person.new("Stella")






