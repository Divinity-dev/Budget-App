class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, dependent: :destroy, class_name: 'Category'
  has_many :data, dependent: :destroy, class_name: 'Datum'

  validates :name, presence: true
end
