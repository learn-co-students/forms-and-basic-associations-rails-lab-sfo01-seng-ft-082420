class Song < ActiveRecord::Base
  #associations
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end 

  def new_notes=(new)
    new.each do |t|
      new_note = Note.create(content: t, song_id: self.id)
      self.notes << new_note
    end
  end

end
