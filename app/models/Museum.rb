class Museum < ActiveRecord::Base
    has_many :artists
    has_many :art_pieces, through: :artists
end