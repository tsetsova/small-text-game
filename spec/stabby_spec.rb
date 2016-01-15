require "stabby"

describe "stabby" do

  attacker = Attacker.new
  character = Character.new
  fight = Knife_Fight.new

  it "stabs 4 times if number == 4" do
    allow(fight).to receive(:number).and_return(4)
    expect(fight.outcome).to include "You've been stabbed 4 times."
  end

  it "runs away if number == 0" do
    allow(fight).to receive(:number).and_return(0)
    expect(fight.outcome).to eq "You manage to run away unscathed."
  end

  it "returns health of attacker" do
    expect(attacker.health).to eq 100
  end

  it "returns health of character" do
    expect(character.health).to eq 120
  end

   it "damages 200 hp if damage is 200" do
    allow(fight).to receive(:stab_damage).and_return(200)
    expect(fight.outcome).to include "You've lost 200 hp!"
  end


end
