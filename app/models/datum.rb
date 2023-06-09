class Datum < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_data, dependent: :destroy, class_name: 'CategoryDatum'
  has_many :categories, through: :category_data


  validates :name, presence: true
  validates :amount, numericality: { is_decimal: true }
end
