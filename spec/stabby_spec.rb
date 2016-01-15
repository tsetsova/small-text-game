require "stabby"

describe "stabby" do
  it "stabs" do
    number = (2..5).map {|num| num}.sample
    expect(stabs(number)).to eq "You're stabbed #{number} times."
  end
end