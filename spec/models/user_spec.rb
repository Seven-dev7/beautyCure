require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { create(:user) }

    it 'should create a valid User' do
      expect(user).to be_an_instance_of(User)
    end
    it 'should add a cart to user creation' do
      expect(user.cart).to be_an_instance_of(Cart)
    end

    describe 'associations' do
      it { should have_many(:appointments) }
      it { should have_one(:cart) }
    end
end
