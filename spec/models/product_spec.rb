require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { create(:product) }

    it 'should create a valid Product' do
      expect(product).to be_an_instance_of(Product)
    end

    describe 'associations' do
      it { should have_many(:cart_products) }
      it { should have_many(:order_products) }
    end
end

