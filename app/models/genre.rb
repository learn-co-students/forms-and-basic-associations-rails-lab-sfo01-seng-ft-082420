class Genre < ActiveRecord::Base
  # associations
  has_many :songs
end
