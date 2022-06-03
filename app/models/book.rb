class Book < ApplicationRecord
  has_many_attached :cover_photos
  belongs_to :author
end
