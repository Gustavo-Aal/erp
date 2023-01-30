class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
   

  devise :confirmable,
         :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable,
         :validatable
end
