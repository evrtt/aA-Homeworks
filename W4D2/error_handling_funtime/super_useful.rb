# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  
  
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue StandardError => e
    puts "That wasn't fruit, but if you give me coffee, you could try to give me fruit again"
    hopefully_coffee = gets.chomp
    if hopefully_coffee == "coffee"
      retry
    else
      puts "That #{hopefully_coffee} was not coffee. Have a sparkly day."
      puts "Error was: #{e.message}"
    end
  end
end  

# PHASE 4
class BestFriend
  
  def initialize(name, yrs_known, fav_pastime)
    unless name.is_a?(String) && name.length > 0
      raise "You cant have a bestriend without a name!"
    end
    @name = name
    if yrs_known <= 5 
      raise "Do I know you?"
    end
    @yrs_known = yrs_known
    unless fav_pastime.is_a?(String) && name.length > 0
      raise 'Friends do freinds stuff'
    end
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} centuries. Let's be friends for another #{1000 * @yrs_known} minutes."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never don't think about me for five minutes." 
  end
end


