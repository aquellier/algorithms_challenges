require_relative '../ascii_conversion'

describe '#ascii_conversion' do
  it 'should return a string' do
    expect(ascii_conversion('hello')).to be_a String
  end
  it 'should return an ascii encoded version of the provided string' do
    expect(ascii_conversion('hello')).to eq('104101108108111')
  end
end
