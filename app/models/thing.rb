class Thing < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "users_id"
  has_and_belongs_to_many :loanees, class_name: "User", join_table: "things_users"

  mount_uploaders :thing_images, ThingImageUploader
end
