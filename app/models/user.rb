class User < ApplicationRecord
  has_many :things
  has_and_belongs_to_many :borrowed_things, class_name: "Thing", join_table: "things_users"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  has_many :messages

  mount_uploader :profile_image, ProfileImageUploader
end
