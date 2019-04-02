class AttributePage < ApplicationRecord
  belongs_to :attribute
  belongs_to :page, polymorphic: true
end
