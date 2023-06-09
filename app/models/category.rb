class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :categories_data, dependent: :destroy, class_name: 'CategoryDatum'
  has_many :data, through: :categories_data
  has_one_attached :icon
  validates :name, :icon, presence: true
end
