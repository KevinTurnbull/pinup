# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  event_types = EventType.create([
    { name: "dance" },
    { name: "theatre" },
    { name: "spoken word / literature" },
    { name: "visual arts" },
    { name: "classical" },
    { name: "pop" },
    { name: "rock" },
    { name: "punk" },
    { name: "hip hop" },
    { name: "R&B" },
    { name: "reggae" },
    { name: "blues" },
    { name: "jazz" },
    { name: "electronic music" },
    { name: "alternative" },
    { name: "experimental" },
    { name: "world" },
    { name: "mixed media" }
  ])

  roles = Role.create([
    { name: 'default' },
    { name: 'admin' }
  ])

  user_groups = UserGroup.create([
    { name: 'users', role: Role.find_by( name: 'default' )},
    { name: 'administrators', role: Role.find_by( name: 'admin' )}
  ])

  name  = 'Owen Bradley'
  email = 'theoandtheb@gmail.com'
  password = password_confirmation = 'asdffdsa'
  user  = User.create([{
    name: name,
    email: email,
    password: password,
    password_confirmation: password,
    user_group_id: 2,
    role: Role.find_by(name: 'admin')
  }])

  name2  = 'Cindy Savard'
  email2 = 'savardcindy@gmail.com'
  user  = User.create([{
    name: name2,
    email: email2,
    password: password,
    password_confirmation: password,
    user_group_id: 2,
    role: Role.find_by(name: 'admin')
  }])

  name3  = 'Philippe Mineau'
  email3 = 'philippe.mineau@gmail.com'
  user  = User.create([{
    name: name3,
    email: email3,
    password: password,
    password_confirmation: password,
    user_group_id: 2,
    role: Role.find_by(name: 'admin')
  }])

#  external_calendars = ExternalCalendar.create([
#    { title: "Ottawa Jazz Happenings",
#      url:   "http://www.google.com/calendar/ical/ottawajazzhappenings%40jazzworkscanada.com/public/basic.ics"},
#    { title: "Jazz Works Canada",
#      url:   "http://www.google.com/calendar/ical/jazzworkscanada.com_29lcl1pmtk661nr45rv5hckho8%40group.calendar.google.com/public/basic.ics"},
#    { title: "Jazz Works Canada",
#      url:   "http://www.google.com/calendar/ical/jazzworkscanada.com_g53tni1lq25vk1kt66ljin2sg4%40group.calendar.google.com/public/basic.ics"}
#  ])