describe Array.new([1,2,3]), "Array", type: 'collection' do
  #Elementos do array
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
  end

  it '#match_array' do
    #expect(subject).to match_array([1,2])
    expect(subject).to match_array([1,2,3])
  end

  it '#contain_exactly', :slow do
    expect(subject).to contain_exactly(1,2,3)
  end
end
