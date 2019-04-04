class User < ApplicationRecord
    has_many :bands
    has_many :musicians
    has_many :venues
    has_many :messages
    has_many :recipients, through: :messages, source: :recipient
    has_many :senders, through: :messages, source: :sender
    has_secure_password

    def my_pages_serializer
        {musicians: self.musicians.map { |musician| musician.my_page_serializer},
         bands: self.bands.map { |band| band.my_page_serializer},
         venues: self.venues.map { |venue| venue.my_page_serializer}}

        # do I want the whole page objects or just the information I need from each one???
        # does the ID need to be taken to the front end???
    end
end

# !!! for musicians, bands, and venues: look into subclasses so that the extract_values method isn't repeated
