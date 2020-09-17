require 'rails_helper'

RSpec.describe CartProduct, type: :model do
  let(:cart_product) { create(:cart_product)}
    
  it 'should create a valid Order_item' do
    expect(cart_product).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:cart) }
    it { should belong_to(:product) }
  end
end
