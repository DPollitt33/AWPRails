json.array!(@infos) do |info|
  json.extract! info, :id, :name, :phone, :email, :address, :intro, :about, :policy, :terms
  json.url info_url(info, format: :json)
end
