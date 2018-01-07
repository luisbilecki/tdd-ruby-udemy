require 'rails_helper'

RSpec.describe Customer, type: :model do

  #fixtures :customers
  #fixtures :all

  it '#full_name' do
    #customer = customers(:luis)
    customer = create(:customer)
    customer1 = create(:customer)
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

  it 'Atributo transitório' do
    customer = create(:customer_default, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end


  it 'Cliente masculino s/ vip' do
    customer = create(:customer_male_default)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(false)
  end

  it 'Cliente masculino c/ vip' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'Cliente feminino c/ vip' do
    customer = create(:customer_female_vip)
    expect(customer.gender).to eq('F')
    expect(customer.vip).to eq(true)
  end


  it 'Cliente feminino s/ vip' do
    customer = create(:customer_female_default)
    expect(customer.gender).to eq('F')
    expect(customer.vip).to eq(false)
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }

end
