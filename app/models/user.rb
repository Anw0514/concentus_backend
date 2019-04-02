class User < ApplicationRecord
    has_many :bands
    has_many :musicians
    has_many :venues
    has_many :recipients, class_name: "User", foreign_key: "sender_id"
    belongs_to :sender, class_name: "User"
end
