require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  let(:order_item) { create(:order_item)}
    
  it 'should create a valid Order_item' do
    expect(order_item).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:product) }
    it { should belong_to(:order) }
  end
end

