class Song < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :artist
  belongs_to :genre

  has_many :notes

  def genre_name=(name)
    genre = Genre.find_or_create_by(name: name)
    self.genre = genre
  end

  def genre_name
    self.try(:genre).try(:name)
  end

  def artist_name
    self.try(:artist).try(:name)
  end

end
