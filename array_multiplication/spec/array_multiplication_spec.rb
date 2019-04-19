require_relative '../array_multiplication'

describe '#array_multiplication' do
  it 'should return a string' do
    expect(array_multiplication([1, 4, 5, 7])).to be_a String
  end
  it "should return products of all the other numbers
  in the array separated by '-'" do
    expect(array_multiplication([1, 4, 5, 7])).to eq('140-35-28-20')
  end
end
