class Musician < ApplicationRecord
  # !!! create module for pages because of the repeated methods
  belongs_to :user
  has_many :band_members, as: :member, dependent: :destroy
  has_many :bands, through: :band_members
  has_many :page_tidbits, as: :page, dependent: :destroy
  has_many :tidbits, through: :page_tidbits
  has_many :bookings, as: :act, dependent: :destroy
  has_many :days, through: :bookings


# gets tidbits of each type for user
  def genres
    self.tidbits.select do |tidbit|
      tidbit.group == 'genre'
    end
  end
  
  def links
    self.tidbits.select do |tidbit|
      tidbit.group == 'link'
    end
  end
  
  def looking_for
    self.tidbits.select do |tidbit|
      tidbit.group == 'looking for'
    end
  end

  def skills
    self.tidbits.select do |tidbit|
      tidbit.group == 'skill'
    end
  end

  def page_serializer
    # serializer for a musician as a page
    {id: self.id,
     model: "Musician",
     user: self.user.msg_serializer,
     name: self.name,
     zip: self.zip,
     bio: self.bio,
     yt: self.yt_video,
     genres: self.extract_value(self.genres),
     looking_for: self.extract_value(self.looking_for),
     links: self.extract_value(self.links),
     skills: self.extract_value(self.skills),
     bookings: self.bookings}
  end

  def member_serializer
    # serializer for a musician as a band member
    {
      id: self.id,
      name: self.name,
      type: 'Musician'
    }
  end

  def extract_value(tidbit_array)
    # gets only the value for the tidbits passed in
    tidbit_array.map do |tidbit|
      {value: tidbit.value, id: tidbit.id}
    end
  end

  def create_page_tidbits(tidbits)
    # creates tidbit_pages upopn creation or update of a musician
    self.page_tidbits.destroy_all
    tidbits.each do |tb|
      PageTidbit.create(tidbit_id: tb, page: self)
    end
  end

end
