class Order < ApplicationRecord
  has_many :items
  has_many :products, through: :order_products

  accepts_nested_attributes_for :items
end
