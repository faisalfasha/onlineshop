class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products, dependent: :destroy
  def merchant?
    has_role?(:merchant)
  end

  def client?
    has_role?(:client)
  end
  
end
