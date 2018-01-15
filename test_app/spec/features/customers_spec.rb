require 'rails_helper'

RSpec.feature "Customers", type: :feature, js: true do
  it 'Visit indexpage' do
    visit(customers_path)
    save_and_open_page
    page.save_screenshot('teste.png')
    expect(page).to have_current_path(customers_path)
  end
end
