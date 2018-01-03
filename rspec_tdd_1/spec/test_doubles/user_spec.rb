describe "Teste double" do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Luís', password: 'secret')
    puts user.name
    puts user.password

    allow(user).to receive(:perfil).and_return("Administrador")
    puts user.perfil
  end

  it 'as_null_object' do
    #as_null_object se tiver algum erro no double, ele ignora.
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Luís', password: 'secret')
    puts user.name
    puts user.password

    allow(user).to receive(:perfil).and_return("Administrador")
    puts user.perfil

    user.abc
  end

end
