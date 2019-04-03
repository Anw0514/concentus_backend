class PageTidbit < ApplicationRecord
  belongs_to :tidbit
  belongs_to :page, polymorphic: true
end
