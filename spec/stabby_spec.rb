require "stabby"

describe "stabby" do

  attacker = Knife_Fight.new
  character = Character.new

  it "stabs 4 times if number == 4" do
    allow(attacker).to receive(:number).and_return(4)
    expect(attacker.stabs).to eq "You're stabbed 4 times."
  end

  it "runs away if number == 0" do
    allow(attacker).to receive(:number).and_return(0)
    expect(attacker.stabs).to eq "You manage to run away unscathed."
  end

  it "returns health of attacker" do
    expect(attacker.health).to eq 300
  end

  it "returns health of character" do
    expect(character.health).to eq 400
  end

   it "damages 200 hp if damage is 200" do
    allow(attacker).to receive(:stab_damage).and_return(200)
    expect(attacker.damage_caused_by_attacker).to eq "You've lost 200 hp!"
  end
end
