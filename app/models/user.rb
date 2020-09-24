class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        
  has_many :appointments
  has_one :cart
  after_create :add_cart_to_user

    def add_cart_to_user
      Cart.create!(user_id: id)
    end
end

