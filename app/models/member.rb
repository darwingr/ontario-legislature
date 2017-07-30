class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.all_names(excluded_name)
    names = Member.pluck(:first_name, :last_name).map { |m| m.join(' ') }
    names.delete excluded_name
    names.uniq
  end

  def self.find_by_fullname(name)
    id = Member.first.id
    Member.pluck(:id, :first_name, :last_name).map do |m|
      id=m[0] if name == [m[1], m[2]].join(' ')
    end
    Member.find id
  end

  def self.random_member
    order("RANDOM()").first
  end

  def name
    [first_name, last_name].join ' '
  end

  def photo
    "members/#{[first_name, last_name].join '_'}.jpg"
  end
end
