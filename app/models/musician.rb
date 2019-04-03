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
end
