require_relative '../abcheck'

describe '#abcheck' do
  it 'should return true if there are exactly 3 characters between
  an a and a b in a string at least one time and false otherwise' do
    expect(abcheck('bifia')).to eq(true)
    expect(abcheck('bifiahhhb')).to eq(true)
    expect(abcheck('acccb')).to eq(true)
    expect(abcheck('affb')).to eq(false)
  end
end
