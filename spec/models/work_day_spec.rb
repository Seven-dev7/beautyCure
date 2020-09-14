require 'rails_helper'

RSpec.describe WorkDay, type: :model do
  let(:workday) { create(:work_day)}
    
  it 'should create a valid WorkDay' do
    expect(workday).to be_valid
  end
  
  describe 'associations' do
    it { should belong_to(:employee) }
  end
end

