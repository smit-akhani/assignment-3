class Book < ApplicationRecord
  has_many_attached :cover_photos
  belongs_to :author

  validates :name, presence: true
  validates :cover_photos, content_type: { in: 'image/png', message: 'Cover photos must be in PNG format' }, size: { less_than: 1.megabytes , message: 'Cover photos should be less than 1 MB!' }, aspect_ratio: :square
end
