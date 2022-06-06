class Author < ApplicationRecord
  has_one_attached :profile_picture
  has_many :books, dependent: :destroy

  validates :name, :address, presence: true
  validates :profile_picture, content_type: { in: 'image/png', message: 'Profile picture must be in PNG format' }, size: { less_than: 1.megabytes , message: 'Profile picture should be less than 1 MB!' }, aspect_ratio: :square
end
