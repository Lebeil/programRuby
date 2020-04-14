require_relative '../lib/caesar_cipher'

describe "caesar cipher" do
  it "should echo string caesar cipher " do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end