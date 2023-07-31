class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # READ
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

  get '/art_pieces/:id' do
    art_piece = ArtPiece.find(params[:id])
    art_piece.to_json
  end

  # CREATE
  post '/museums' do
    museum = Museum.create(
      name: params[:name],
      capacity: params[:capacity]
    )
    museum.to_json
  end

  post '/artists' do
    artist = Artist.create(
      name: params[:name],
      style: params[:style],
      museum_id: params[:museum_id]
    )
    artist.to_json
  end

  post '/art_pieces' do
    art_piece = ArtPiece.create(
      name: params[:name],
      description: params[:description],
      completion_date: params[:completion_date],
      artist_id: params[:artist_id]
    )
    art_piece.to_json
  end

  #UPDATE
  patch '/museums/:id' do
    museum = Museum.find(params[:id])
    museum.update(
      name: params[:name],
      capacity: params[:capacity]
    )
    museum.to_json
  end

  patch '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.update(
      name: params[:name],
      style: params[:style],
      museum_id: params[:museum_id],
    )
    artist.to_json
  end

  patch '/art_pieces/:id' do
    art_piece = ArtPiece.find(params[:id])
    art_piece.update(
      name: params[:name],
      description: params[:description],
      completion_date: params[:completion_date],
      artist_id: params[:artist_id]
    )
    art_piece.to_json
  end

  # DELETE
  delete '/museums/:id' do
    museum = Museum.find(params[:id])
    museum.destroy
    museum.to_json
  end

  delete '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.destroy
    artist.to_json
  end

  delete '/art_pieces/:id' do
    art_piece = ArtPiece.find(params[:id])
    art_piece.destroy
    art_piece.to_json
  end
end
