class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :payments, dependent: :destroy

  validates :name, presence: true
  #   validates :email, presence: true
  #   validates :password, presence: true
end
