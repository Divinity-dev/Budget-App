require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
    it { should have_many(:category_data).dependent(:destroy).class_name('CategoryDatum') }
    it { should have_many(:data).through(:category_data) }
    it { should have_one_attached(:icon) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end
end
