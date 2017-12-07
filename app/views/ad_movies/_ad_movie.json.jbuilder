json.extract! ad_movie, :id, :name, :url, :size, :created_at, :updated_at
json.url ad_movie_url(ad_movie, format: :json)
