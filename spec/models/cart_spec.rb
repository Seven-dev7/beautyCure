require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:cart) { create(:cart)}
    
  it 'should create a valid Order_item' do
    expect(cart).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:cart_items) }
  end
end

