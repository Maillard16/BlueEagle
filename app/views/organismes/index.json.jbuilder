json.array!(@organismes) do |organisme|
  json.extract! organisme, :id, :nom, :telephone, :adresse
  json.url organisme_url(organisme, format: :json)
end
