require './lib/string_calculater'

describe "StringCalculator" do
  describe "#add" do
    let(:calculator){ StringCalculator.new }  #generating instance locally, before generates for each spec for multiple describes
    
    it "returns 0 the sum of empty string" do
      expect(calculator.add("")).to eql(0)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("2,5")).to eql(7)
    end

    it "returns 'only accepts a string' when not string" do
      expect(calculator.add(2)).to eql('only accepts a string')
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("-2,5")).to eql('negative value are not accepted')
    end
  end
end
