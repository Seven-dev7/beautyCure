require 'rails_helper'

RSpec.describe OrderService, type: :model do
  let(:order_service) { create(:order_service)}
    
  it 'should create a valid Order_item' do
    expect(order_service).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:service) }
  end
end
