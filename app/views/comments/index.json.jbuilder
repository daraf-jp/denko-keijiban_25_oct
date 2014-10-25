json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :content, :board_id
  json.url comment_url(comment, format: :json)
end
