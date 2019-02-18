class Song < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :artist
  belongs_to :genre

  has_many :notes

  def genre_name=(name)
    genre = Genre.find_or_create_by(name: name)
    self.genre = genre
  end
end
