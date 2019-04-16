class User < ApplicationRecord
  has_many :bands
  has_many :musicians
  has_many :venues
  has_many :messages_sent, class_name: :Message, foreign_key: :sender_id
  has_many :messages_received, class_name: :Message, foreign_key: :recipient_id
  has_many :recipients, through: :messages_sent, source: :recipient
  has_many :senders, through: :messages_received, source: :sender
  has_one_attached :avitar
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  def interlocutors
    (self.senders + self.recipients).uniq
  end

  def make_conversation(interlocutor)
    a = self.messages_sent.select do |msg|
      msg.recipient == interlocutor
    end.map do |msg|
      msg.message_serializer(true)
    end

    b = self.messages_received.select do |msg|
      msg.sender == interlocutor
    end.map do |msg|
      msg.message_serializer(false)
    end

    a.concat(b).uniq.sort_by { |msg| msg[:created_at] }.reverse
  end

  def conversations_serializer
    self.interlocutors.map do |i|
      { name: i.name,
        id: i.id,
        email: i.email,
        img: 'https://fortunedotcom.files.wordpress.com/2019/01/boo.jpg',
        messages: self.make_conversation(i)
      }
    end
  end

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

  def login_serializer
    # serializer for the response of a user's login or registration
    {user: {id: self.id,
            name: self.name,
            email: self.email,
            zip: self.zip,
            distance: self.distance,
            distance_type: self.distance_type},
     my_pages: self.my_pages_serializer,
     discover_pages: self.discover_pages_serializer,
     conversations: self.conversations_serializer
    }
  end
end

# !!! for musicians, bands, and venues: extract their methods into application so that its drier
