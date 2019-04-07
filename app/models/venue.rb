class Venue < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page, dependent: :destroy
  has_many :tidbits, through: :page_tidbits
  has_many :days, dependent: :destroy
  has_many :bookings, through: :days

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
     model: "Venue",
     user_id: self.user.id,
     name: self.name,
     address: self.address,
     zip: self.zip,
     bio: self.bio,
     genres: self.extract_value(self.genres),
     looking_for: self.extract_value(self.looking_for),
     links: self.extract_value(self.links),
     dates: self.days,
     bookings: self.bookings}
  end

  def extract_value(tidbit_array)
    tidbit_array.map do |tidbit|
      tidbit.value
    end
  end

end
