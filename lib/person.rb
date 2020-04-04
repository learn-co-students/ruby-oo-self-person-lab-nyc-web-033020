# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :bath, :happiness, :hygiene, :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        happiness >= 8
    end

    def clean?
        hygiene >= 8
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
    
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
