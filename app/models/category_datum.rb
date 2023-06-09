class CategoryDatum < ApplicationRecord
  belongs_to :category
  belongs_to :datum, foreign_key: 'data_id'

  validates :datum, presence: true
  validates :category, presence: true
end
