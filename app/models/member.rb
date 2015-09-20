class Member < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  def name
    [first_name, last_name].join ' '
  end

  def photo
    "members/#{[first_name, last_name].join '_'}.jpg"
  end
end
