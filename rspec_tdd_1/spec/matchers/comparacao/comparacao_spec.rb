describe 'Matchers de Comparação' do
  it '#equal - Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    #objetos diferentes
    expect(x).not_to equal(y)
  end

  it '#be - Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).not_to be(y)
  end

  it '#eql - Testa o valor' do
    x = "ruby"
    y = "ruby"

    expect(x).to eql(y)
  end
end
