class CategoryDatum < ApplicationRecord
  belongs_to :category
  belongs_to :datum
  validates :datum, presence: true
  validates :category, presence: true
end
