def random_number_generator(number)
  Proc.new{(0..number).map{|num| num}.sample}
end

class Knife_Fight
  def initialize
   @number = random_number_generator(10).call
   @attacker_health = health
   damage = []
   @number.times {damage << random_number_generator(10).call}
   @stab_damage = damage.reduce(:+)
  end

  attr_reader :number, :stab_damage

  def health
    health = 100
  end

  def damage_caused_by_attacker
    "You've lost #{stab_damage.to_s} hp!"
  end

  def stabs
    return "You're stabbed #{number.to_s} time" + "#{"s" if number > 1}." if number != 0
    "You manage to run away unscathed."
  end
end

class Character
  def initialize
    @character_health = health
  end

  def health
    health = 120
  end
end

def event
  attacker = Knife_Fight.new
  character = Character.new
  puts attacker.stabs
  puts "Your health is now #{character.health - attacker.damage_caused_by_attacker.to_i} hp."
end

puts event


#add a character class with a life count
#make sure character can die
#find a way for character to fight back?
#add luck modifier