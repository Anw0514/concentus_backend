# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
require 'faker'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

# users
me = User.create(name: "Andrea Williams", email: "a@a.com", zip: 20886, distance: 10, distance_type: "mi", password: "123e", avatar: 'https://lh3.googleusercontent.com/vbrfIr_PXU2nIGyPyDItNBn7LpAnZFblqIJyOKlV35AB9F5pGJV200erP5a6BzuXv6eH6ueAUoVlUepUa-QXdpvdvKieoW89gYUevCfldd2YkDvxfsfHKjt7MceoHFmWMMMetoGshnQlnCpEp3UoQSasGPYj1Pgfhv6ALD1WwguTvXzLWGnB4l079-2xA1VJoiwiQ2KbRh5wwpyp8248sBwipAng5JkcQc1rmcrN3dLg2xJeZ-VrQghqSr_tHq3fOPV3AIVF06tEZOE1rBPd4JW1IT41L-k8LzpkJhcn6_zMfwQpfR5jUJzsqZQjICRZCLdG44mjCNg6dnqS2NQxZC-2hpLG_1aTksDRkwjxElLfrhyWRrAKKPkvq7z3BFBWs9YBbyDeWH5w3PsssPRvasXIKp6qYeqyaNYZ4SWM3cIzzG3ytr_INPl7Cfq3O2sgMvCfDQplcfI66OsgjXJwKUJHSbu3608Ce2lp7hCmz_op6M48Pf8sr_tx3XdX9hfldYuwSbhm5snCGouvfocfmvFYq5oQiIe5XSM_DOkWWaT-vTy3et2QwO53OMlW_qf6sxu_w2RaB1FehyOtYfD3_jWGZC0rWHpsgdtmqs3amWJwLHisFgIe9aHp14Y_ob0p-dRSvqrtouaJyRjfxWLsXqT7J5_urJA=s811-no')
chris = User.create(name: "Chris Jones", email: "dcjones@aol.com", zip: 20010, distance: 50, distance_type: 'km', password: "123e", avatar: 'https://lh3.googleusercontent.com/fyFTRObNcX6WW8psAKGkhnG-wdghv-k4ua2pRN7W77-AVv2r0tQtT35yhXH21ZB9ZDXeDuxIshTJBDHyj6QRsQRGdt-PmByG3Uwv_umBiSQmW5ZmqDdRtxTm4fQ10GtOw3aegGX8Nlmptmfm6u2hlegDT5uaCb7yq8b9mWMAEaiGqOanho58LjDvQxtMuzGPU01wN-mV5en46LPSRY_RKb6kENZ2HjrllwvE8ZdUpJEgit_5HTjuqoozfjWS99GohPB0cSrX4wlwv00FNVVbDnBXXBZYKHYAxgR1_84off1Q40yCOl4KWHnFZpU5TDCXaved3_pWmu6U2I9tvUpYaVmB5oM0LUMjzlvSPmVA-7DI_Bk86Vc_pAx0znjRsTNCcwu5EKMaeM-ygyWzGlV9o2dJxytSoUKEOtXzgCGNM5Tm3r94khBDbtZkZcifxlQz9VX--kxsCOIo838HxTNtkhYjdMlKH7YBOiTn3ojO4d_6bUxqekTN6O14q9DBY_TOKZQ4zbW87HlBwMkj5HuFu1EASy4G-FPakvuIDVU5QU1YmNMz1FTCy51V-azjJrfKg8KKrm_fNoCur28x2d4njqiHuEaXjLNemeT8oi2vU5MaAr2mLmyCowb5097tWNQkQOWxgS8NmQHgJtzaOGrG035dO0EpitI=w191-h189-no')
shan = User.create(name: "Shannon Nabors", email: "shan@aol.com", zip: 20011, distance: 60, distance_type: 'mi', password: "123e", avatar: 'https://lh3.googleusercontent.com/937NVvn5nFZIHpsgaF5nTGORYWJKkTGF3srjzPQUVS0tSonjBQDdE2VaawNU2nSPYqfEZQYCndjAQzRgJ1ZpL-0O8-emO-F50Rp-D2jqCKCt0ryBYqNRJa8gVnOqG9lCuWWCHRhHIRaAYMpPft3oBv_3p52RDFU7li_BRakLOrpO6dPiDLGdEO4oGlp1Z8C3S9G_BUnUl9BOV5cQZGNrhhURPusN44Pobd_ypR2L3OUAQSm4t1TyPK6qSj_qG_GU7RDVFesJHHD0zXPVlU4Ka6gPnYKgOSk_uFQKAw54pLGCkWiDNp_3EgQam4HiSI50Y7idKZlyb0sYCGuzt8Mqa_tYhHoF-rgrT3aB_SR4NMvWhBCp5MCFQvpJQ7yKCKiTukjqgqLKGR1ACG4KHLJvbK3mruEvsHN0q8srqTYxy1wt-WcR47_OsGQsOURbACCy-xjLA1ch4pI-jOtTkWvSAnW4C3XfTT5olTrvgX9X8uUErjjstNRVFsDAM4ZX8iVSSf68cIGcByVMf0ttOklrp2p9CKLx19pQxK9Z--ssflOrMyzmLiVfesI4kXsjJGnUMZF5t6B51ZNfAMKN9dVmX7nc55pwjHOLWiz2rTGZeRSWTuyLq_-uk7704uTg0Mzji4JftHCLKKOsrun_ELpjaaalY2eIa0k=s968-no')
hai = User.create(name: "Hai Nguyen", email: "hihai@hey.com", zip: 20012, distance: 30, distance_type: 'km', password: "123e", avatar: 'https://lh3.googleusercontent.com/rfY25gDRvbt4vKTMWt4SAWywVwV-wRCEUKSeFAk7A8WHrtrau7WH7o5hcmDE3h_TGkfMmlDkHKiEoEcczyWddXCinQc76LJhacvmBIKexha9jzXNUjONyF5aaNRF4qXaL5o_s79ere6ExJqu0HJ2sQm93NT4jQw35hR9Gg2GBn6yVv8vINq6pRSPBcezjcCSuyIYJVI-TbDs4g32DmF0Ogg7l_9PiJbaFR28YuhjVv7b-SklHMN5QAn8grUVVhR7FJmV8A0o5BKYd5_skAeGoSpyfRje0u9kaSNhpKv4EpThjxtqAsaOt-Ycs61_5urqx2N6erUeweCVJOP9D8iv3_I5CbyylEt1AaV84POUZUbhGZyc_XCpSBLxzfdyhdSI7NqOJav2dGIY0U7DAgtnchPsXHD52R9P0wFnlEPKhZRtKRhJdlkN076J1ozNQgNm9mynfETEsOWoOJ0VBf3yQPl7cKPRclFd8TTnSi6X4BeMt3YpUBuFl4d4QWjR9pL5QsMycOXKCKEATV7W_EXj0DVAZtZ8H51i6_jxkEl6H-NPKFMCKTu0LwgNztqBT7xWiC4n5BD4EmXAt9HR_8UjJCli-Mih2NT-9oEm0TAM3U4odW49TPRINaejkDHEyMqdmHBs8SfgfSCwlObGcB6xQ2auVhfC9og=s576-no')
ann = User.create(name: "Ann Duong", email: "ann@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/2X1C8Etjjy4VfkqyiZ0BfhVaU1muVxAl_CeF48DscispYJ8OpJ0s_-EWKqtueMMH8pt1xcukokfKsP_etkneZ1J_s6rOryRPhNp0zupK1UrRDjDJ4TENIPiS1Y636eZNv_kpM_gtMaH0L7ZJ3BuJQaA3iq1B-gM42rI_aMTwLK6V-bTqiE6V6GCv5p1UbuYljwNFpLmApPz4IgdhycNRXgQxXDAZd_b8YnusykaU2N2lyvZlMoiEvpczTkcIYONOA7Kqh5Mfeqa1ApZhqlfxF2JWTTnsjxFKWLbtMG_1Zw2H8M6ZrsxVj2p_J-mkgdgnxD3WSqScpD0DMU62GmCyYFvYwuU9I3tVnFqCPLe26BnSGn6CAkYbN1agMcVeoOlNKnaVOLmX0H7exyfOfANgYdshS9-lXub4H-BBj4M4WrBNMnMimkudcOREW-23QONpyRVde2XvrVnwddihnURJScdXHcw80Osf8hqtIlaJZtiuovZSxM5xPtgvo7TJdSnzH2BcX-81bF2EcgNP12Ut4aIjAPBlY_Zq9eslqJMAY7RkK5Ioerswjrre-0Adp-WPWc8Ukue0kCCL_mUxH5BskrP1IFaA3Dfkw7xVGHeBzGsQB3HiduIP1lgkc5zX6x5WJYYsqXtgNmgYWd3KZYS--uT0jmc35OE=s392-no')
ross = User.create(name: "Ross Jones", email: "ross@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/79lzSUKPpfZIGK5mC1985P7Son8O0dzZfhE5UNDHy5dV4_tL2_9aOsoDZQjawDdgluSbQCeq9doYPEWTclvB-2cXcKpOkifc4C7ASz4fLlR-uCXji_w0x5mwsMeUTkKqd3CtoMrwmf5D8vxMHiKh0u_XIxspykjsZewCpZv_Ji4rczif_JkKrKxGWu_OHA6b7YbbeOmaBta-LCrsCclmKh5sBdhhPsziOHG1Isw7dL44FR8QtmrUTJ61-5qkVMh6HLtIL9gBGG4EsC09737Vt0r65WY8nxqM3KTjOG1WS3b8GvlD7br-3IcyB-IWhY5iZKXi5WtbGvmRCJdopU77YM2tXBGT9lEjQdTiLysMrj7KvbcAVCfeBmqwek8opsyIW-edMjTNgPjhQlZF6tis0yXgUPhsIolBNcbNhR5tDpnnes1JWf01PfXXitXSpbC8HloguhsnTh2aACKpMl8Op4iuWFmjMZ3tMZSbtn19ejO71f6XijsY2a6f66Tq3mL6hzG8UhUhpkBkpSxOXVORG5vcbOi8zxTXJTNxjAfeQiq5ppJJat1tuS28dl0v4lDn7V3NqqyjAhcB0i0ktBqVqBpRXnLLPtVzgOVbfwjAs0zJ4TVhFzxIPPKLoxFnzegbFZn9Zx9WD2AnfO8NGA4Lv7tFhFR_qZs=s516-no')
benn = User.create(name: "Ben Yellin", email: "benisyellin@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/PXxlhRcQ-8aqW6G9iM5O_mg9u4E7IDludR7OLCe26CVv8uPT4pSlYiWoK_8m5DWQYXB67ChO3x01L0BsHZ41TKl1ABQOaCtqaLSaNfyvF2VrfWwKbAncyOiPbgs3Zn2RUOIVDoZojOBXIFo1-eFIxI7pep-83byDjCMO1q6vVLKa20sZoqUq68xAdO6qoIO2ArALgPoPcYiITsanhzDKtyJtqGP5bhtRxnkoJTnGlPeVTcnT1j82DwBto8AD1TVp6LFnnSt7UZmQXxGpOM9yI9LlnTNY5iACj4yiSYimyt3vIZwYGtG_goX64EQiJOvun2nWRMMl739zqBXCX_bcr8MIKG8U3YgBJ0kRo5_c9hesEkBZDhFY8E8ZkQ57mZUBlz7kHeTkIoDBalgoQYDGFTItdaEHI8vrK7Cb0-l-YV5UgwX6Ffq0kuPVtkpobNYGCP2zgrZyZ0jzGTLQB5GbZ9w7_ZoAYqjC10uVDtGzmFWedNOi2KHGj9yP3na9PFz1RQ8NB8DM4hXiSRYksO-tOLVOUksHVXptd-sLdDYmS9G_SoAizVTIu8bgCU0chm90-AJfcBNgMERYlBGb4Wr_G90jelQrfIL-gzBOGcsO7Y4gJhMIvY9fLfZk7uacjoPNhbsA6xNjOMZnlNoaGw7rrWcEIbOEno8=s868-no')
ryan = User.create(name: "Ryan Gill", email: "gillsinaglass@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/O9D0PnRz0QZEuGHV959ter5KqzcVxrj7onOJXeN96oQzK1qzLXx1WLam_ShrW9lRIdNFGlRX8ulE8B2dlVYtAtas3O41_Gmq4HcFSixeOlp42cpOAWqZA5xNquDynpbC4gJzInghiDF9_YxKgAeOKgz6dRsl7Cst2HtlDB1wxRbDQhM73WEYbqVNocbRmjB3j_PuxaNtWcsGAxY1QhPpZ4AiD2Z3V8tZvE_B2I4DixoAyjPsHn-hazwmRDCwCc3q_eBxZT72aMwIm6i2OMQ-bTcaolJGoiud3UzYD7kc57yXMC8rGByw325WpFDa4oN8RUJTLWuTAYnfBRQbww8ZzEW8Awl4hdTqdSrkEBz9_ouJAZ08TessTMiluRY8zTbN9qmU2Wut2-9wJR-h-Md1QrIJhFOc5QB59ohKCIHGn_Ffot3WNuoVpNa0kI-TRwV3_-9dwhKDvJJjKIXQb9BfQP0g6Oahb2Tc8rPTXM5lIEVXtNnoCzRyAsx3V5ab9lb0z67JFdAETDbhb_ld-0bASXdmzcqRRcyOvdi-x4CGzF5r3ODd69kzzeqvAnN1sdmh2CjSXFGihFQM2mRBpzZBVctgfG1W7s30IHv0jj5BmjY-0UkHjIpxrjSsV9B1Fps7VLJQw-OpYt88_OCRb_ZV9AjsIXL4kUs=s408-no')
james = User.create(name: "James Clement", email: "james@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/msG7C_U8G28QvSJONREjWt-VJSLTHWl5CHWaKgLE2BRPbw_8srt32ghh8C29l93W0fS6wlIREe9zHATM1eAGjKmU81y6JOt7q9pf-bSAYCtDowe9uTRQMkvsrDb95wV7QeuJD764U2CaNdOJyl77sIBQkwMNrfzbvVrxjGLJHrxC1Kq_bHHdldt7msdIePt8PGSAJLOj3-z8bXSI6sl8fzunqBuonmUWlm_3S0Ux0qiE8gSaFGigOlK41b_Bm7VdnpfAgGCh2COwCSPVpWuLUpJxLb_BhjvT1KvCtoTffGVdHvwV7oDcPtBG4vU8vDFALGje1Le8GyBR76O-RRjJ6eE14sSYsp4nZg_2YoIeOEBUZmSXkOYp43CN34krc-ZN3cEE5szAShHVDmPHjoCisPwRkrdXDgQ-OtOLttT4KkJXC6EyDuQg7zWe393T_5lcqGd_TTXZYQsM1h6CWaKM2cPVqDaNB5_HurduZH5Y7GHFNaqWRKMqU15kUAK9Bsvs6wtIdXzuvzfkw7yRQjDlt_19Mapbk2An0jtsxLQMeX9kGJX_BIlhGHGzo41v2bECzGj8RfMT0HBbzQL828GOORID70xyuGIVutIATOfU6637RcnVPie7gdD10DtdEDKduGZfM6roHUqknYFneJjsPec7VANHxv0=s409-no')
phil = User.create(name: "Phil Hartley", email: "phil@gmail.com", zip: 20005, distance: 20, distance_type: 'mi', password: '123e', avatar: 'https://lh3.googleusercontent.com/RYN0dbDbw0GvOmzb1b8i331BIaHleqQ1LPeqkXOobYkKoJc5zawiIGc2w8yJoZF8EWRuKYU5cB-uMTyLdb9tbzAPxJv6QbQGZhA_qU78U4GSVGkxRrV8ZBbnvXEb_JtDKVRdLThH2dnFfLxM_DScgrPEO_SmZ8a3k6Nc-EzaPed2tT0wTVrWTpKD1FTmlPEJeBrsrQJDr9yZwPRSCoSiC9uVjwdNwHHu6VIW1KKypVaGtacGyRx3Hz21a34wkwZkParLSLKwfFwq5kJUZ1uDLrsd4aMoHbIsPeovrrccpVdK4VR0TXeIGpyWjMB0v9zRxblefqKCk3SZLP9LKRKwtJUHOieT1DLN5E43JnQNrhI5AUwCMMcQUnup15h0jS1Z_KgGV-2EfLOg1UYjatiIYoje6MgqJ3Rk_e73nEYJCnwQ_BKXn4Qyt397mINr2pX9PTu6W2X_wf1DCtPYCazUAkgptIag3Xpullk5b_zyzPIRgClSQnJtkqVnEIwscu1btulBKgVUpioxKpWWxRYnnwjNuPGpR9lZG6jsWeyuL5JTd9khU2DPm_uBQ4m37ZO8smH1eIiY4FvRevlaju0fdfES3REHvRcuWowINT6rQO5ek7bjUbf1O0KBBx6esudoneGZ_MKpj2Z5wE1dB51UmcYT_xa0e2g=s242-no')
users = [chris, shan, hai, ann, ross, benn, ryan, james, phil]

# tidbits
genre_rock = Tidbit.create(group: 'genre', value: 'Rock')
genre_indie = Tidbit.create(group: 'genre', value: 'Indie')
genre_funk = Tidbit.create(group: 'genre', value: 'Funk')
genre_pop = Tidbit.create(group: 'genre', value: 'Pop')
genre_rnb = Tidbit.create(group: 'genre', value: 'RnB')
genre_rap = Tidbit.create(group: 'genre', value: 'Rap')
genre_latin = Tidbit.create(group: 'genre', value: 'Latin')
genre_classical = Tidbit.create(group: 'genre', value: 'Classical')
genres = [genre_rock, genre_indie, genre_funk, genre_pop, genre_rnb, genre_rap, genre_latin, genre_classical]

skill_piano = Tidbit.create(group: 'skill', value: 'Piano')
skill_sing = Tidbit.create(group: 'skill', value: 'Singing')
skill_bass = Tidbit.create(group: 'skill', value: 'Bass Guitar')
skill_guitar = Tidbit.create(group: 'skill', value: 'Guitar')
skill_drums = Tidbit.create(group: 'skill', value: 'Drums')
skill_trumpet = Tidbit.create(group: 'skill', value: 'Trumpet')
skill_violin = Tidbit.create(group: 'skill', value: 'Violin')
skills = [skill_piano, skill_sing, skill_bass, skill_guitar, skill_drums, skill_trumpet, skill_violin]

looking_bands = Tidbit.create(group: 'looking for', value: 'Band')
looking_venues = Tidbit.create(group: 'looking for', value: 'Venue')
looking_pianists = Tidbit.create(group: 'looking for', value: 'Pianist')
looking_guitarists = Tidbit.create(group: 'looking for', value: 'Guitarist')
looking_bassists = Tidbit.create(group: 'looking for', value: 'Bassist')
looking_drummers = Tidbit.create(group: 'looking for', value: 'Drummer')
lookings = [looking_bands, looking_venues, looking_pianists, looking_guitarists, looking_bassists, looking_drummers]

link_google = Tidbit.create(group: 'link', value: 'google.com')
link_learn = Tidbit.create(group: 'link', value: 'learn.co')
# ??? should link be separated into its own table? It needs a display name so that long links arent displayed.

# venues
venue1 = Venue.create(address: '123 fake st. RealTown, MD', zip: 20876, name: 'Real Cafe', user: me, bio: "This cafe is super cool! We've got a small stage that we would love to fill for fridays and saturdays. We are definitely real so please shoot us a message if you're interested for a really cool and really real gig!")
venue2 = Venue.create(address: '6750 Rainbow rd. Mushroom Kingdom, MD', zip: 20888, name: 'Mario Kafe', user: me, bio: "We need super talented bros to write a song about our featured menue item, the peach castobler (a peach cobler sculpture of a castle. We want to be able to play it whenever anyone orders this delicious item. If you'd like to help, let us know!")

# musicians
mesinging = Musician.create(name: "Andrea Williams", user: me, zip: 20874, yt_video: 'https://www.youtube.com/embed/LfaU-KEkBt8', bio: "I feel like I should be way farther along with my progject than I am right now but I'll just do a shit ton of work over the weekend.")
ben = Musician.create(name: "Benjamin Addai", user: benn, zip: 20021, yt_video: 'https://www.youtube.com/embed/4VR-6AS0-l4', bio: "Why is that so fire??")
chine = Musician.create(name: "Chine Anikwe", user: me, zip: 56667, yt_video: 'https://www.youtube.com/embed/FAuPgMPBEOk', bio: "I am the voice of reason.")
heloise = Musician.create(name: "Heloise Taillet", user: shan, zip: 56697, yt_video: 'https://www.youtube.com/embed/da-cHvWGhr0', bio: "Anthony's more legit than I am.")
anthony = Musician.create(name: "The Bully", user: hai, zip: 56667, yt_video: 'https://www.youtube.com/embed/Fj55FyfVa0o', bio: "It's pronounced kid kuh-dee... Not kid cootie")

musicians = [mesinging, ben, heloise, chine, anthony]

vids = ['https://www.youtube.com/embed/M9Uy0opVF3s', 'https://www.youtube.com/embed/7C2z4GqqS5E', 'https://www.youtube.com/embed/MBdVXkSdhwU', 'https://www.youtube.com/embed/BVwAVbKYYeM', 'https://www.youtube.com/embed/u_zM_VC0Vpc', 'https://www.youtube.com/embed/smX6xCPDbrE']

15.times do 
    m = Musician.create(name: Faker::Games::SuperSmashBros.fighter, user: users.sample, zip: 12345, yt_video: vids.sample, bio: Faker::TvShows::BojackHorseman.quote)
    musicians << m
    b = Band.create(name: Faker::Games::SuperSmashBros.stage, user: users.sample, zip: 54321, yt_video: vids.sample, bio: Faker::TvShows::RickAndMorty.quote)
    2.times do 
        BandMember.create(member: musicians.sample, band: b, role: Faker::Music.instrument)
        PageTidbit.create(page: m, tidbit: lookings.sample)
        PageTidbit.create(page: b, tidbit: lookings.sample)
    end
    3.times do
        PageTidbit.create(page: m, tidbit: skills.sample)
        PageTidbit.create(page: b, tidbit: genres.sample)
        PageTidbit.create(page: m, tidbit: genres.sample)
    end
end

# bands and members
band1 = Band.create(name: "Binding.cry", zip: 20005, user: me, bio: "This is another bio", yt_video: 'https://www.youtube.com/embed/I6NSS-CC93o')
band2 = Band.create(name: "JSON Derulo Fan Club", zip: 90210, yt_video: 'https://www.youtube.com/embed/pBI3lc18k8Q', user: hai, bio: "We are json de-realest people out there. We need a drummer who's able to keep up, though.")
BandMember.create(member: mesinging, band: band1, role: 'Vocals')
BandMember.create(member: ben, band: band1, role: 'Piano')
BandMember.create(member: ben, band: band2, role: 'Piano')
BandMember.create(member: heloise, band: band2, role: 'Guitar')
BandMember.create(member: anthony, band: band2, role: 'Trumpet')
BandMember.create(member: mesinging, band: band2, role: 'Vocals')
BandMember.create(member: chine, band: band2, role: 'Bass Guitar')

# page tidbits
PageTidbit.create(tidbit: genre_indie, page: mesinging)
PageTidbit.create(tidbit: link_google, page: mesinging)
PageTidbit.create(tidbit: skill_sing, page: mesinging)
PageTidbit.create(tidbit: skill_piano, page: mesinging)
PageTidbit.create(tidbit: looking_venues, page: mesinging)

PageTidbit.create(tidbit: link_google, page: band1)
PageTidbit.create(tidbit: looking_guitarists, page: band1)
PageTidbit.create(tidbit: looking_bassists, page: band1)

PageTidbit.create(tidbit: looking_bands, page: venue1)
PageTidbit.create(tidbit: link_learn, page: venue1)
PageTidbit.create(tidbit: genre_latin, page: venue1)
PageTidbit.create(tidbit: genre_pop, page: venue1)

PageTidbit.create(tidbit: looking_bands, page: venue2)
PageTidbit.create(tidbit: link_learn, page: venue2)

PageTidbit.create(tidbit: genre_classical, page: ben)
PageTidbit.create(tidbit: skill_piano, page: ben)
PageTidbit.create(tidbit: link_google, page: ben)
PageTidbit.create(tidbit: looking_bands, page: ben)
PageTidbit.create(tidbit: looking_venues, page: ben)

PageTidbit.create(tidbit: looking_venues, page: band2)
PageTidbit.create(tidbit: looking_drummers, page: band2)
PageTidbit.create(tidbit: genre_rock, page: band2)
PageTidbit.create(tidbit: genre_rnb, page: venue1)
PageTidbit.create(tidbit: genre_rap, page: venue1)

PageTidbit.create(tidbit: skill_bass, page: chine)
PageTidbit.create(tidbit: looking_venues, page: chine)

PageTidbit.create(tidbit: genre_funk, page: heloise)
PageTidbit.create(tidbit: skill_violin, page: heloise)
PageTidbit.create(tidbit: skill_guitar, page: heloise)
PageTidbit.create(tidbit: looking_venues, page: heloise)

PageTidbit.create(tidbit: skill_trumpet, page: anthony)
PageTidbit.create(tidbit: looking_venues, page: anthony)
PageTidbit.create(tidbit: skill_drums, page: anthony)

Message.create(sender: me, recipient: hai, content: 'I am better than you at table tennis.', subject: 'Truth')
Message.create(sender: chris, recipient: me, content: 'Are you working on the messages???', subject: 'Fix Yourself')
Message.create(sender: hai, recipient: ross, content: 'Do you want to die', subject: 'DYWTD')
Message.create(sender: shan, recipient: hai, content: "You don't need to kill in order to win the game", subject: 'I do not want to die.')

