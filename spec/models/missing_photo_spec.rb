require 'rails_helper'

RSpec.describe MissingPhoto, type: :model do
  context 'associations' do
    it { should have_one :problem }
  end
end
