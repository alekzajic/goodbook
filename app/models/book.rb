class Book < ApplicationRecord
  # Cover image upload specifications
  has_attached_file :cover, styles: { medium: "309x475#", thumb: "115x180#" }, default_url: "/images/:style/no-cover.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  # One-to-many relationship with Reviews
  has_many :reviews

  # Elastic search for Books
  searchkick
end
