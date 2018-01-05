require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers
  #fixtures :all

  it '#full_name' do
    #customer = customers(:luis)
    customer = create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it '#full_name - sobreescrevendo atributos e usando aliases' do
    customer = create(:user, name: "Luís", vip: false, days_to_pay: 10)
    expect(customer.full_name).to eq("Sr. Luís")
    expect(customer.vip).to eq(false)
  end

  it '#vip - herança exemplo' do
    customer = create(:customer_vip, name: "Luís")
    expect(customer.full_name).to eq("Sr. Luís")
    expect(customer.vip).to eq(true)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
    attrs1 = attributes_for(:customer_vip)
    attrs2 = attributes_for(:customer_default)

    puts attrs
    puts attrs1
    puts attrs2

    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }
end
