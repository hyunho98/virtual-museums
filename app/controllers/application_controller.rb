class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/museums" do
    museums = Museum.all
    museums.to_json
  end

  get '/museums/:id' do
    artists = Artist.find_by(museum_id: params[:id])
    artists.to_json
  end

  get '/artists' do
    artists = Artist.all
    artists.to_json
  end

  get '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.to_json(include: :art_pieces)
  end
end
