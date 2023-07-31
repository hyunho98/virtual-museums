class ArtPiece < ActiveRecord::Base
    belongs_to :artist

    def self.by_date
        art_pieces = ArtPiece.all.order(:completion_date)
    end

    def self.artist_by_date(id)
        art_pieces = self.where(artist_id: id).order(:completion_date)
    end
end