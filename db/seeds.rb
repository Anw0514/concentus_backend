# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Message.destroy_all
BandMember.destroy_all
PageTidbit.destroy_all
Day.destroy_all
Venue.destroy_all
Musician.destroy_all
Tidbit.destroy_all
Band.destroy_all
User.destroy_all

me = User.create(name: "andrea", email: "anw0514@gmail.com", zip: 20886, distance: 10, distance_type: "mi", password: "password123")
mesinging = Musician.create(name: "Andrea Williams", user: me, zip: 20874, bio: "This is a bio that's reallt long to test if the string data type can handle it. I have been working really hard on planning and I'm finally coding which is weird but good. I hope that everything goes smoothly, but I'm not that optimistic that it will.")
band1 = Band.create(name: "Binding.cry", zip: 20005, user: me, bio: "This is another bio that's reallt long to test if the string data type can handle it. I have been working really hard on planning and I'm finally coding which is weird but good. I hope that everything goes smoothly, but I'm not that optimistic that it will.")
BandMember.create(musician: mesinging, band: band1)
venue1 = Venue.create(address: '123 fake st. RealTown, MD', zip: 20876, name: 'Real Cafe', user: me, bio: "This is another bio that's reallt long to test if the string data type can handle it. I have been working really hard on planning and I'm finally coding which is weird but good. I hope that everything goes smoothly, but I'm not that optimistic that it will.'")
genre_rock = Tidbit.create(group: 'genre', value: 'rock')
looking_bands = Tidbit.create(group: 'looking for', value: 'bands')
link_google = Tidbit.create(group: 'link', value: 'google.com')
PageTidbit.create(tidbit: genre_rock, page: mesinging)
PageTidbit.create(tidbit: link_google, page: mesinging)
PageTidbit.create(tidbit: link_google, page: band1)
PageTidbit.create(tidbit: looking_bands, page: venue1)
