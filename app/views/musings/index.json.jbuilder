json.array!(@musings) do |musing|
  json.extract! musing, :title, :date, :post
  json.url musing_url(musing, format: :json)
end
