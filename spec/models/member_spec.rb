require 'rails_helper'

RSpec.describe Member, type: :model do
  context 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  describe '.name' do
    it 'concatenates first name before last name' do
      member = create :member

      expect(member.name).to eq 'John Yakabuski'
    end
  end

  describe '.photo' do
    it 'returns the photo filepath for the member' do
      member = create :member

      expect(member.photo).to eq 'members/John_Yakabuski.jpg'
    end
  end
end
