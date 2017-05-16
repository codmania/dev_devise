# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

timeline_statuses = ['open', 'closed']

timeline_statuses.each do |status|
  TimelineStatus.create( name: status )
end

puts 'Timeline status created!'

event_statuses = ['open', 'closed', 'upcoming']

event_statuses.each do |status|
  EventStatus.create( name: status )
end

puts 'Event status created!'
