require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) { create(:service) }

  it 'should create a valid Product' do
    expect(service).to be_an_instance_of(Service)
  end

  describe 'associations' do
    it { should have_many(:order_services) }
    it { should have_many(:cart_services) }
  end
end
