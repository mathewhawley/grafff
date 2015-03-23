class Artwork < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :users, through: :likes
end