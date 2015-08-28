# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.destroy_all

Event.create(title: "pasado", start: (Time.now - 5.days), :end => (Time.now - 2.days), allDay:false)

Event.create(title: "presente", start: (Time.now - 2.days), :end => (Time.now + 2.days), allDay:false)
Event.create(title: "futuro", start: (Time.now + 2.days), :end => (Time.now + 5.days), allDay:false)

Event.create(title: "allday", start: (Time.now - 7.days), :end => (Time.now - 6.days), allDay:true)