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
     user: self.user.msg_serializer,
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
      {value: tidbit.value, id: tidbit.id}
    end
  end

  def create_page_tidbits(tidbits)
    # creates tidbit_pages upopn creation or update of a venue
    self.page_tidbits.destroy_all
    tidbits.each do |tb|
      PageTidbit.create(tidbit_id: tb, page: self)
    end
  end

end
