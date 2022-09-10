# frozen_string_literal: true

require 'rails_helper'
RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'is not valid without a password' do
    user = build(:user, password: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid without an email' do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
  end

  it 'has none to begin with' do
    expect(described_class.count).to eq 0
  end

  it 'has one after adding one' do
    create(:user)
    expect(described_class.count).to eq 1
  end
end
