class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # when a list is destroyed, it's associated bookmarks will be destroyed
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end
