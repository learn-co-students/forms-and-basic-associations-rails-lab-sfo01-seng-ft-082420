class Note < ActiveRecord::Base
  #associations
  belongs_to :song
end
