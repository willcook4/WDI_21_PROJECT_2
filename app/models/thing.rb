class Thing < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "users_id"
  has_and_belongs_to_many :loanees, class_name: "User", foreign_key: "users_id"
end
