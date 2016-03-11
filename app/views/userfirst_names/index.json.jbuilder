json.array!(@userfirst_names) do |userfirst_name|
  json.extract! userfirst_name, :id, :last_name
  json.url userfirst_name_url(userfirst_name, format: :json)
end
