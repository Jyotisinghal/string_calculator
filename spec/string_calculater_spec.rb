require './lib/string_calculater'

describe "StringCalculator" do
  describe "#add" do
    before do
      calculator = StringCalculator.new
    end

    it "returns 0 the sum of empty string" do
      expect(calculator.add("")).to eql(0)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("2,5")).to eql(7)
    end
  end
end
