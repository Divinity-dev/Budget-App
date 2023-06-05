class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :data, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
end
