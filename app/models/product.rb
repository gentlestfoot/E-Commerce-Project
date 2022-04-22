class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :orders
  has_one_attached :image
end
