class Venue < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
  has_many :tidbits, through: :page_tidbits
  has_many :days
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

end
