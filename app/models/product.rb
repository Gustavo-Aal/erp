class Product < ApplicationRecord
    belongs_to :user

    has_many :items
    has_many :orders, through: :items

    validates :name, uniqueness: true
end
