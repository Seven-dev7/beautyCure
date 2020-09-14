require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:appointment) { create(:appointment)}
    
  it 'should create a valid Order_item' do
    expect(appointment).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:employee) }
    it { should belong_to(:order) }
  end
end
