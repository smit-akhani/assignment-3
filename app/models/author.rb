class Author < ApplicationRecord
  has_one_attached :profile_picture
  has_many :books, dependent: :destroy
end
