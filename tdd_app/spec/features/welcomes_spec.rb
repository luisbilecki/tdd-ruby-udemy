require 'rails_helper'

feature 'Welcome', type: :feature do
  scenario 'Mostra a mensagem de bem-vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')
  end

  scenario 'Verificar o link de cadastro de clientes' do
    visit(root_path)
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end
end
