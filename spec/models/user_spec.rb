require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { create(:user) }

    it 'should create a valid User' do
      expect(user).to be_an_instance_of(User)
    end

    describe 'associations' do
      it { should have_many(:appointments) }
    end
end
