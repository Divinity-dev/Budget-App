class Category < ApplicationRecord
  belongs_to :user
  has_many :categories_data, dependent: :destroy
  has_many :data, through: :categories_data
  validates :name, :icon, presence: true
end
