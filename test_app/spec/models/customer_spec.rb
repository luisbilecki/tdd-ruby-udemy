require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers
  #fixtures :all

  it '#full_name' do
    #customer = customers(:luis)
    customer = create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it '#full_name' do
    customer = create(:customer, name: "Luís")
    expect(customer.full_name).to eq("Sr. Luís")
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }
end
