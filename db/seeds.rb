members = YAML.load(File.read("#{Rails.root}/db/members.yml"))

members.each do |attributes|
  member = Member.find_or_initialize_by(riding: attributes['riding'])
  member.first_name = attributes['first_name']
  member.last_name = attributes['last_name']
  member.middle_name = attributes['middle_name']
  member.photo = attributes['photo']
  member.title = attributes['riding']

  Rails.logger.info "Saving #{member.last_name}, #{member.first_name}"
  member.save!
end
