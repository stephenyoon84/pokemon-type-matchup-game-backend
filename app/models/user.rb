class User < ApplicationRecord
  has_many :scores
  validates :name, :email, presence: true
  # validates :email, uniqness: true
end
