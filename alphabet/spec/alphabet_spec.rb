require_relative '../alphabet'

describe '#alphabet_searching' do
  it 'should return true if downcase alphabet is passed as an argument' do
    expect(alphabet_searching(('a'..'z').to_a.join)).to eq(true)
  end
  it 'should return false if alphabet is incomplete' do
    expect(alphabet_searching(('a'..'y').to_a.join)).to eq(false)
  end
end
