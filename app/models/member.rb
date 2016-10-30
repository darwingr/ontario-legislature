class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.all_names(excluded_name)
    names = Member.pluck(:first_name, :last_name).map { |m| m.join(' ') }
    names.delete excluded_name
    names.uniq
  end

  def self.random_member
    order("RANDOM()").limit(1)
  end

  def name
    [first_name, last_name].join ' '
  end

  def photo
    "members/#{[first_name, last_name].join '_'}.jpg"
  end
end
