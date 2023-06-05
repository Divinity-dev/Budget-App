class Datum < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :category_data
  has_many :categories_data, dependent: :destroy

  validates :name, presence: true
  validates :amount, numericality: { is_decimal: true }
end
