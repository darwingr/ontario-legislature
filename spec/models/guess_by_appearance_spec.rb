require 'rails_helper'

RSpec.describe GuessByAppearance, type: :model do
  let(:member) { build :member }

  describe '#name_list' do
    it 'returns 3 strings' do
      guess = GuessByAppearance.new member
      create :liberal_member
      create :ndp_member
      result = guess.name_list

      assert_equal 3, result.count
      result.map { |name| assert_instance_of String, name }
    end
  end

  describe '#matches?' do
    it 'returns true for matching string' do
      guess = GuessByAppearance.new member

      assert_equal true, guess.matches?('John Yakabuski')
    end
  end
end
