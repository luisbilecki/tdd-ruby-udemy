require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers
  fixtures :all

  it 'create a customer' do
    customer = customers(:luis)
    expect(customer.full_name).to eq("Sr. Luís Felipe")
  end
end
