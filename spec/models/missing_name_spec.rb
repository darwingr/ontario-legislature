require 'rails_helper'

RSpec.describe MissingName, type: :model do
  context 'associations' do
    it { should have_one :problem }
  end

  describe '.options' do
    it 'combines solution and wrong-answers in a hash' do
      FactoryGirl.create :member
      missing_name = FactoryGirl.create :missing_name

      expect(missing_name.options).to be(a_hash)
    end
  end
end
