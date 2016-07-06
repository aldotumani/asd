json.array!(@videos) do |video|
  json.extract! video, :id, :titulo, :video
  json.url video_url(video, format: :json)
end
