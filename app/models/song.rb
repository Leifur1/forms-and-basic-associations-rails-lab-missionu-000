class Song < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :artist
  belongs_to :genre
end
