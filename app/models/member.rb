class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :problems

  def name
    [first_name, last_name].join ' '
  end

  def photo
    "members/#{[first_name, last_name].join '_'}.jpg"
  end
end
