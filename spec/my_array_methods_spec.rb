require 'my_array_methods'

describe 'Array' do
  let(:ary){[1,1,2,3,4]}
  it 'behaves like &' do
    expect(ary.my_ampersand([1,3,4,4])).to eq [1,3,4]
  end

  it 'behaves like *' do
    expect(ary.my_asterisk(2)).to eq [1,1,2,3,4,1,1,2,3,4]
    expect(ary.my_asterisk("wtf")).to eq "1wtf1wtf2wtf3wtf4"
  end

  it 'behaves like +' do
    expect(ary.my_plus([4,5])).to eq [1,1,2,3,4,4,5]
    expect(ary).to eq [1,1,2,3,4]
  end

  it 'behaves like -' do
    expect(ary.my_minus([1,4,5])).to eq [2,3]
  end
end
