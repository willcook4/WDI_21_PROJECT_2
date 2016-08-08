class Thing < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :loanees, class_name: "User", join_table: "things_users"
  has_and_belongs_to_many :tags

  mount_uploaders :thing_images, ThingImageUploader
end
