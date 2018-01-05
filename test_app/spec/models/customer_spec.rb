require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers
  #fixtures :all

  it '#full_name' do
    #customer = customers(:luis)
    customer = create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }
end
