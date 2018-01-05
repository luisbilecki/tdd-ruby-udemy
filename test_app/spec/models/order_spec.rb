require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Tem 1 pedido' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'sobreescever atributo' do
    c = create(:customer)
    order = create(:order, customer: c)
    expect(order.customer).to be_kind_of(Customer)
  end

end
