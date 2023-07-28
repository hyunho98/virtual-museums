class Artist < ActiveRecord::Base
    has_many :art_pieces
    belongs_to :museum
end