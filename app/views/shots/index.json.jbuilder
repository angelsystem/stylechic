json.array!(@shots) do |shot|
  json.extract! shot, :id, :title, :description, :image
  json.url shot_url(shot, format: :json)
end
