class Category < ApplicationRecord
  def self.total_amount(_categories)
    def self.total_amount(categories)
      total_amount = 0
      Category.includes(:payments).where(id: categories.map(&:id)).find_each do |category|
        category.payments.each do |payment|
          total_amount += payment.amount
        end
      end
      total_amount
    end
  end

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :payments, dependent: :destroy

  validates :name, presence: true
end
