class Musician < ApplicationRecord
  belongs_to :user
  has_many :band_members
  has_many :bands, through: :band_members
  has_many :page_tidbits, as: :page
  has_many :tidbits, through: :page_tidbits
  has_many :bookings, as: :act
  has_many :days, through: :bookings

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
    {id: self.id,
     model: "Musician",
     user_id: self.user.id,
     name: self.name,
     zip: self.zip,
     bio: self.bio,
     genres: self.extract_value(self.genres),
     looking_for: self.extract_value(self.looking_for),
     links: self.extract_value(self.links),
     skills: self.extract_value(self.skills),
     bookings: self.bookings}
  end

  def member_serializer
    {
      id: self.id,
      user_id: self.user_id,
      name: self.name,
      zip: self.zip,
      bio: self.bio
    }
  end

  def extract_value(tidbit_array)
    tidbit_array.map do |tidbit|
      tidbit.value
    end
  end

end
