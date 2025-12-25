=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age, :lit

  def initialize(age)
    self.age = age
    self.lit = false
  end

  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end
  def light_candles
    self.lit = true
  end
  def blow_out_candles
    self.lit = false
  end
  def greet
    "Happy #{self.age.ordinalize} Birthday!"
  end

  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def to_s
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def BirthdayCake.celebrate(age)
    birthday_cake = BirthdayCake.new(age)
      # First error cake in BirthdayCake was not capitalized. Error: ./birthday_cake.rb:53:in 'BirthdayCake.celebrate': uninitialized constant BirthdayCake::Birthdaycake (NameError)
    puts birthday_cake.greet
    puts birthday_cake.to_s
    puts "Lighting candles..."
    birthday_cake.light_candles 
      # Second error, light_candles was not defined. Error: ./birthday_cake.rb:57:in 'BirthdayCake.celebrate': undefined method 'light_candles' for an instance of BirthdayCake (NoMethodError)
    puts birthday_cake.to_s
    puts "Singing happy birthday..."
    puts birthday_cake.sing 
      # Third error, sing was spelled wrong. Error: ./birthday_cake.rb:62:in 'BirthdayCake.celebrate': undefined method 'sign' for an instance of BirthdayCake (NoMethodError)
    puts "Blowing out candles..."
    birthday_cake.blow_out_candles 
      # Fourth error, birthday_cake was spelled wrong. Error: birthday_cake.rb:64:in 'BirthdayCake.celebrate': undefined local variable or method 'birth_cake' for class BirthdayCake (NameError)
      # Fifth error, blow_out_candles was undefined. Error: birthday_cake.rb:64:in 'BirthdayCake.celebrate': undefined method 'blow_out_candles' for an instance of BirthdayCake (NoMethodError)   
    puts birthday_cake.to_s

    birthday_cake
  end
end

BirthdayCake.celebrate(10)
