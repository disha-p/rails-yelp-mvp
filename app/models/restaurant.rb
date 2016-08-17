class Restaurant < ApplicationRecord

  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false}
end
