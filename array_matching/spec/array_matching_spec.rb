require_relative '../array_matching'

describe '#sum_array' do
  it 'should return a string' do
    expect(sum_array(['[5, 2, 3, 3, 4]', '[2, 2, 3, 10, 6]']))
      .to be_a String
  end
  it "should sum the elements of same index and separate them with a '-'" do
    expect(sum_array(['[5, 2, 3, 3, 4]', '[2, 2, 3, 10, 6]']))
      .to eq('7-4-6-13-10')
  end
end
