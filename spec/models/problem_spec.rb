require 'rails_helper'

RSpec.describe Problem, type: :model do
  context 'associations' do
    it { should belong_to :solvable }
    it { should belong_to :member }
  end

  context 'constraints' do
    it { should have_db_index([:solvable_type, :solvable_id]) }
    it { should have_db_column(:solvable_type).of_type(:string) }
    it { should have_db_index(:member_id) }
    it { should have_db_column(:member_id).of_type(:integer) }
  end
end
