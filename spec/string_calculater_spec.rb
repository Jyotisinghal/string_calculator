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

    it 'should return a number if the passed string contains no delimiters' do
      expect(calculator.add('123')).to eq (123)
    end

    # it 'should return a number if the passed string contains no delimiters' do
    #   expect(calculator.add("123,1", "1,2")).to eq ([124, 3])
    # end
  end
end
