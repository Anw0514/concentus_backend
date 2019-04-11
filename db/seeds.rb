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

# users
me = User.create(name: "Andrea Williams", email: "a@a.com", zip: 20886, distance: 10, distance_type: "mi", password: "123e")
chris = User.create(name: "Chris Jones", email: "dcjones@aol.com", zip: 20010, distance: 50, distance_type: 'km', password: "123e")
shan = User.create(name: "Shannon Nabors", email: "shan@aol.com", zip: 20011, distance: 60, distance_type: 'mi', password: "123e")
hai = User.create(name: "Hai Nguyen", email: "hihai@hey.com", zip: 20012, distance: 30, distance_type: 'km', password: "123e")

# tidbits
genre_rock = Tidbit.create(group: 'genre', value: 'Rock')
genre_indie = Tidbit.create(group: 'genre', value: 'Indie')
genre_funk = Tidbit.create(group: 'genre', value: 'Funk')
genre_pop = Tidbit.create(group: 'genre', value: 'Pop')
genre_rnb = Tidbit.create(group: 'genre', value: 'RnB')
genre_rap = Tidbit.create(group: 'genre', value: 'Rap')
genre_latin = Tidbit.create(group: 'genre', value: 'Latin')
genre_classical = Tidbit.create(group: 'genre', value: 'Classical')

skill_piano = Tidbit.create(group: 'skill', value: 'Piano')
skill_sing = Tidbit.create(group: 'skill', value: 'Singing')
skill_gd = Tidbit.create(group: 'skill', value: 'Graphic Design')
skill_bass = Tidbit.create(group: 'skill', value: 'Bass Guitar')
skill_guitar = Tidbit.create(group: 'skill', value: 'Guitar')
skill_drums = Tidbit.create(group: 'skill', value: 'Drums')
skill_saxophone = Tidbit.create(group: 'skill', value: 'Saxophone')
skill_trumpet = Tidbit.create(group: 'skill', value: 'Trumpet')
skill_violin = Tidbit.create(group: 'skill', value: 'Violin')


looking_bands = Tidbit.create(group: 'looking for', value: 'Band')
looking_venues = Tidbit.create(group: 'looking for', value: 'Venue')
looking_pianists = Tidbit.create(group: 'looking for', value: 'Pianist')
looking_guitarists = Tidbit.create(group: 'looking for', value: 'Guitarist')
looking_bassists = Tidbit.create(group: 'looking for', value: 'Bassist')
looking_drummers = Tidbit.create(group: 'looking for', value: 'Drummer')

link_google = Tidbit.create(group: 'link', value: 'google.com')
link_learn = Tidbit.create(group: 'link', value: 'learn.co')
# ??? should link be separated into its own table? It needs a display name so that long lists arent displayed.

# venues
venue1 = Venue.create(address: '123 fake st. RealTown, MD', zip: 20876, name: 'Real Cafe', user: me, bio: "This is another bio that's reallt long to test if the string data type can handle it. I have been working really hard on planning and I'm finally coding which is weird but good. I hope that everything goes smoothly, but I'm not that optimistic that it will.'")

# musicians
mesinging = Musician.create(name: "Andrea Williams", user: me, zip: 20874, bio: "This is a bio")
ben = Musician.create(name: "Benjamin Addai", user: chris, zip: 20021, bio: "Why is that so fire??")
chine = Musician.create(name: "Chine Anikwe", user: me, zip:56667, bio: "Am I the voice of reason or am I just rigid and uptight??")

# bands and members
band1 = Band.create(name: "Binding.cry", zip: 20005, user: me, bio: "This is another bio")
band2 = Band.create(name: "OctoThots", zip: 90210, user: me, bio: "Lane is actually a dog pretending to be a human.")
BandMember.create(member: mesinging, band: band1)
BandMember.create(member: ben, band: band1)
BandMember.create(member: chine, band: band2)
BandMember.create(member: ben, band: band2)

# page tidbits
PageTidbit.create(tidbit: genre_rock, page: mesinging)
PageTidbit.create(tidbit: link_google, page: mesinging)
PageTidbit.create(tidbit: skill_sing, page: mesinging)
PageTidbit.create(tidbit: skill_gd, page: mesinging)
PageTidbit.create(tidbit: skill_piano, page: mesinging)

PageTidbit.create(tidbit: link_google, page: band1)
PageTidbit.create(tidbit: looking_pianists, page: band1)

PageTidbit.create(tidbit: looking_bands, page: venue1)
PageTidbit.create(tidbit: link_learn, page: venue1)

PageTidbit.create(tidbit: genre_classical, page: ben)
PageTidbit.create(tidbit: skill_piano, page: ben)
PageTidbit.create(tidbit: link_google, page: ben)
PageTidbit.create(tidbit: looking_bands, page: ben)
PageTidbit.create(tidbit: looking_venues, page: ben)

PageTidbit.create(tidbit: looking_venues, page: band2)
PageTidbit.create(tidbit: genre_classical, page: band2)

PageTidbit.create(tidbit: skill_bass, page: chine)
PageTidbit.create(tidbit: looking_venues, page: chine)

