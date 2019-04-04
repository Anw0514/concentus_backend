class Band < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
  has_many :tidbits, through: :page_tidbits
  has_many :bookings, as: :act
  has_many :band_members
  has_many :musicians, through: :band_members

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

  def page_serializer
    {id: self.id,
     user_id: self.user.id,
     name: self.name,
     zip: self.zip,
     bio: self.bio,
     genres: self.extract_value(self.genres),
     looking_for: self.extract_value(self.looking_for),
     links: self.extract_value(self.links),
     bookings: self.bookings,
     members: self.musicians.map { |musician| musician.member_serializer}}
  end

  def extract_value(tidbit_array)
    tidbit_array.map do |tidbit|
      tidbit.value
    end
  end

end
