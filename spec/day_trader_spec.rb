require_relative '../lib/day_trader'

describe "Day trader" do
    it "should return the best  " do
        expect(day_trader([1,4])).to eq(12)
    end
end