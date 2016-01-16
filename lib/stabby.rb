def random_number_generator(number)
  Proc.new{(0..number).map{|num| num}.sample}
end

class Character
  def initialize
    @character_health = health
  end

  def health
    health = 120
  end
end

class Attacker
  def initialize
    @attacker_health = health
  end

  def health
    health = 100
  end
end

class Knife_Fight
  def initialize
    @number = random_number_generator(10).call
    @stab_damage = calculate_damage
  end

  attr_accessor :number, :stab_damage

  def calculate_damage
   damage = []
   number.times {damage << random_number_generator(20).call}
   stab_damage = damage.reduce(:+)
  end

  def outcome
    if number != 0
      "Oh no!! You've been stabbed #{number.to_s} time" +
      "#{"s" if number > 1}. You've lost #{stab_damage.to_s} hp!"
    else
      "You manage to run away unscathed."
    end
  end
end

def event
  event = Knife_Fight.new
  character = Character.new
  attacker = Attacker.new
  puts "You are walking briskly down the forest path, minding your own business."
  puts "Suddenly a figure steps onto the path deliberately, attempting to look large and threatening."
  puts "It's an angry " + ["elf", "dwarf", "pixie", "giant", "imp", "centaur", "monkey", "elemental"].sample +
  " with a knife! He must have a real grudge because he swings at you without hesitation.."
  puts "------------------------"
  puts event.outcome
  "Your health is now #{character.health - event.calculate_damage.to_i} hp..."
end

puts event


#make sure character can die
#find a way for character to fight back?
#add luck modifier
#add gender to attacker
#add weapons
#make interactive