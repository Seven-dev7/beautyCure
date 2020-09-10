require 'rails_helper'

RSpec.describe CartItem, type: :model do
  let(:cart_item) { create(:cart_item)}
    
  it 'should create a valid Order_item' do
    expect(cart_item).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:cart) }
  end
end
