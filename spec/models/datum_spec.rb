require 'rails_helper'

RSpec.describe Datum, type: :model do
  let(:user) { User.create(name: 'John Doe') }

  describe 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should have_many(:categories).through(:category_data) }
  end

  describe 'validations' do
    subject { Datum.new(name: 'Example Datum', amount: 10.5, author: user) }
    it { should validate_presence_of(:name) }
  end
end
