class Venue < ApplicationRecord
  belongs_to :user
  has_many :attribute_pages, as: :page
end
