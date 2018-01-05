require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'belongs_to' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'sobreescever atributo' do
    c = create(:customer)
    order = create(:order, customer: c)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'tem mais de um pedido - create_list' do
    #orders = create_list(:order, 3)
    orders = create_list(:order, 3, description: "Testeeeee")
    puts orders.inspect
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    customer = create(:customer_with_orders, qtt_orders: 5)
    puts customer.orders.inspect
    expect(customer.orders.count).to eq(5)

  end

end
