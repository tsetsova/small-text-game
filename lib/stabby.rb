def random_number_generator(number)
  Proc.new{(0..number).map{|num| num}.sample}
end

class Knife_Fight
  def initialize
   @number = random_number_generator(10).call
   @attacker_health = health
   @stab_damage = (random_number_generator(10).call) * @number
  end

  attr_reader :number, :stab_damage

  def health
    health = 300
  end

  def damage_caused_by_attacker
    "You've lost #{stab_damage.to_s} hp!"
    stab_damage
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
    health = 400
  end
end

attacker = Knife_Fight.new
character = Character.new
puts attacker.stabs
puts attacker.damage_caused_by_attacker

puts character.health - attacker.damage_caused_by_attacker.to_i




#add a character class with a life count
#add stab_damage to stabs
#make sure character can die
#find a way for character to fight back?
#give attaker ability to die
#add luck modifier