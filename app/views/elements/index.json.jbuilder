json.array!(@elements) do |element|
  json.extract! element, :id, :name, :url, :html_tag, :html_subtag, :order
  json.url element_url(element, format: :json)
end
