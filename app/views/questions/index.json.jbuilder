json.array!(@questions) do |question|
  json.extract! question, :id, :title, :pro_tip_url
  json.url question_url(question, format: :json)
end
