class Order < ApplicationRecord
  validates :total_cost, :user_id, :tax_rate, presence: true

  has_and_belongs_to_many :products
  belongs_to :user
end
