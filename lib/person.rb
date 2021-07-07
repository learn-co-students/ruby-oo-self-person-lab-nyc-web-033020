# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :amount, :bank_account

    def initialize(name)
        @name = name
        @amount = 25
        @happiness =8
        @hygiene =8
    end

    def bank_account
        @amount
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if num >10
        @happiness = 0 if num <0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if num > 10
        @hygiene = 0 if num <0            
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end 
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end 
    end

    def get_paid(num)
        @amount += num
        return "all about the benjamins"
    end 

    def take_bath
        self.hygiene=(@hygiene+=4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -=3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
             "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
             "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
