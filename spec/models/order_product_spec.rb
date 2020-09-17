require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
  let(:order_product) { create(:order_product)}
    
  it 'should create a valid Order_item' do
    expect(order_product).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:product) }
  end
end
