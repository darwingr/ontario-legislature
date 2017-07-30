class GuessByAppearance #< ApplicationRecord
  include ActiveModel::Model

  def self.random
    member = Member.random_member
    self.new member
  end

  def self.retry_for(member_name)
    member = Member.find_by_fullname member_name
    self.new member
  end

  attr_reader :correct_name, :photo

  def initialize(member)
    @photo = member.photo
    @correct_name = member.name
  end

  def matches?(name)
    @correct_name == name
  end

  def name_list
    list = []
    list.push @correct_name

    alt_count = 3
    alternatives = []
    alternatives = Member.all_names(@correct_name).sample alt_count
    list.concat alternatives

    list.sort
  end
end
