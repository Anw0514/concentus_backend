class PageTidbits < ApplicationRecord
  belongs_to :tidbit
  belongs_to :page, polymorphic: true
end
