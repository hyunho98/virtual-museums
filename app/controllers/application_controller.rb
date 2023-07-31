class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/museums" do
    museums = Museum.all
    museums.to_json
  end

  get '/museums/:id' do
    museum = Museum.find(params[:id])
    museum.to_json(include: :artists)
  end

  get '/artists' do
    artists = Artist.all
    artists.to_json
  end

  get '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.to_json(include: :art_pieces)
  end

  get '/artists/:id/by_date' do
    art_pieces = ArtPiece.artist_by_date(params[:id])
    art_pieces.to_json
  end

  get '/art_pieces/by_date' do
    art_pieces = ArtPiece.by_date
    art_pieces.to_json
  end
end
