class User < ApplicationRecord
  has_many :bands
  has_many :musicians
  has_many :venues
  has_many :messages
  has_many :recipients, through: :messages, source: :recipient
  has_many :senders, through: :messages, source: :sender
  has_one_attached :avitar
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  def find_opposite(pages, class_name)
    # method to find the instances of the input class that DON'T belong to self
    class_name.all.select do |page|
        !pages.include?(page)
    end.map { |page| page.page_serializer}
  end

  def combine_page_types(musicians, bands, venues)
    # combines the serialized pages into one 'page' array
    [musicians, bands, venues].flatten(1)
  end

  def my_pages_serializer
    # serializer for the pages belonging to a user
    musicians = self.musicians.map { |musician| musician.page_serializer}
    bands = self.bands.map { |band| band.page_serializer}
    venues = self.venues.map { |venue| venue.page_serializer}

    self.combine_page_types(musicians, bands, venues)
  end

  def discover_pages_serializer
    # serializer for the pages NOT belonging to a user
    musicians = self.find_opposite(self.musicians, Musician)
    bands = self.find_opposite(self.bands, Band)
    venues = self.find_opposite(self.venues, Venue)

    self.combine_page_types(musicians, bands, venues)
  end

  def info_serializer
    # what actually gets called on for the user's pages and discover pages
    {my_pages: self.my_pages_serializer,
     discover_pages: self.discover_pages_serializer}
  end

  def login_serializer
    # serializer for the response of a user's login or registration
    {id: self.id,
     name: self.name,
     email: self.email,
     zip: self.zip,
     distance: self.distance,
     distance_type: self.distance_type
    }
  end
end

# !!! for musicians, bands, and venues: look into subclasses / modules so that the extract_values method isn't repeated
