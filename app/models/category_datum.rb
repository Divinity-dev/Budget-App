class CategoryDatum < ApplicationRecord
  belongs_to :categories
  belongs_to :data
end
