require 'rails_helper'

RSpec.describe CartService, type: :model do
  let(:cart_service) { create(:cart_service)}
    
  it 'should create a valid Order_item' do
    expect(cart_service).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:cart) }
    it { should belong_to(:service) }
  end
end
