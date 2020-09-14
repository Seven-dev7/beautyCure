require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { create(:order)}
    
  it 'should create a valid Order' do
    expect(order).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:order_items) }
  end
end
