class MissingPhoto < ActiveRecord::Base
  has_one :problem, as: :solvable
end
