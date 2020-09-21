class Artist < ActiveRecord::Base
  # associations
  has_many :songs
end
