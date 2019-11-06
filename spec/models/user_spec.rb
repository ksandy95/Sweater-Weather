# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User Model' do
  describe User, type: :model do
    it 'exists' do
      user = User.new(email: 'email', password: 'test', password_confirmation: 'test')
      expect(user).to be_a(User)
    end

    context 'Validations' do
      it { should validate_presence_of(:email) }
      it { should validate_uniqueness_of(:email) }
      it { should validate_presence_of(:password) }
      it { should validate_presence_of(:api_key) }
    end
  end
end
