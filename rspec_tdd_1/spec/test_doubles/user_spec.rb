describe "Teste double" do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Luís', password: 'secret')
    puts user.name
    puts user.password

    allow(user).to receive(:perfil).and_return("Administrador")
    puts user.perfil
  end

end
