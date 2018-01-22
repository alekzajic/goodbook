class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 1-to-many relationship with reviews, with delete dependency
  has_many :reviews, dependent: :destroy

  # Avatar image upload specifications
  has_attached_file :avatar, styles: { medium: "200x200#", thumb: "64x64#" }, default_url: "/images/no-avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
