# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
    def happiness=(happiness)
      @happiness = happiness.clamp(0,10)
    end
    def hygiene=(value)
        @hygiene = value.clamp(0,10)
    end
    def happy?
        return true if @happiness > 7
        false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end
    def start_conversation(person, topic)
      case topic
      when 'politics'
        self.happiness -= 2
        person.happiness -= 2
        'blah blah partisan blah lobbyist'
      when 'weather'
        self.happiness += 1
        person.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end
    end
  end
  
  
  p = Person.new("Daniel")