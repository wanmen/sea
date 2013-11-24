json.array!(@videos) do |video|
  json.extract! video, :title, :description, :url, :number, :lesson_id
  json.url video_url(video, format: :json)
end
