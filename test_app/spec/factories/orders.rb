FactoryBot.define do
  factory :order do
    sequence (:description) {|n| "Pedido número - #{n}"}

    #1a linha é associação automática
    #2a linha é pra sobreescrever a factory

    #customer
    association :customer, factory: :customer
  end
end
