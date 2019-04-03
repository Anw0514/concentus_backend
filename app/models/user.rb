class User < ApplicationRecord
    has_many :bands
    has_many :musicians
    has_many :venues
    has_many :messages
    has_many :recipients, through: :messages, source: :recipient
    has_many :senders, through: :messages, source: :sender
    has_secure_password
end
