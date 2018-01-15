require 'rails_helper'

RSpec.feature "Customers", type: :feature, js: true do
  it 'Visit indexpage' do
    visit(customers_path)
    save_and_open_page
    page.save_screenshot('teste.png')
    expect(page).to have_current_path(customers_path)
  end

  it 'Creates a Customer' do
    #Faz o login
    member = create(:member)
    login_as(member, :scope => :member)

    visit(new_customer_path)
    fill_in('Name', with: Faker::Name.name)
    fill_in('Email', with: Faker::Internet.email)
    fill_in('Address', with:  Faker::Address.street_address)

    click_button('Create Customer')
    expect(page).to have_content('Customer was successfully created.')
  end
end
