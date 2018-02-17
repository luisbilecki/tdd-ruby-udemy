class Customer < ApplicationRecord
  # Validations
  validates :name, presence: true
end
