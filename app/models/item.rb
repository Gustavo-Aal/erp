class Item < ApplicationRecord
  belongs_to :order, inverse_of: :items
  belongs_to :product, inverse_of: :items
end
