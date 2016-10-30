class Problem < ActiveRecord::Base
  belongs_to :solvable, polymorphic: true
  belongs_to :member

  before_create :set_solution

  private

  def set_solution
    self.member ||= Member.random_member.take
  end
end
