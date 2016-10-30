class MissingName < ActiveRecord::Base
  has_one :problem, as: :solvable
end
