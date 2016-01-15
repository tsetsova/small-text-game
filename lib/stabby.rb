def random_number_generator(number)
  Proc.new{(0..number).map{|num| num}.sample}
end

class Knife_Fight
  def initialize
   @number = random_number_generator(10).call
   @health = health
   @damage = (random_number_generator(10).call) * @number
  end

  attr_reader :number, :damage

  def health
    health = 300
  end

  def damage_caused
    "You've lost #{damage.to_s} hp!"
  end

  def stabs
    return "You're stabbed #{number.to_s} time" + "#{"s" if number > 1}." if number != 0
    "You manage to run away unscathed."
  end
end



attacker = Knife_Fight.new

puts attacker.stabs
puts attacker.damage_caused


#add a character class with a life count
#add damage to stabs
#make sure character can die
#find a way for character to fight back?
#give attaker ability to die
#add luck modifier