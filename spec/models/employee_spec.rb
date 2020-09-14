require 'rails_helper'

RSpec.describe Employee, type: :model do
    let(:employee) { create(:employee)}
    
  it 'should create a valid Employee' do
    expect(employee).to be_an_instance_of(Employee)
  end

  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_one(:work_day) }
  end
end
