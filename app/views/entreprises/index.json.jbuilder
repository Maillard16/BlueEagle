json.array!(@entreprises) do |entreprise|
  json.extract! entreprise, :id, :nom, :telephone, :adresse
  json.url entreprise_url(entreprise, format: :json)
end
