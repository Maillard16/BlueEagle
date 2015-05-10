json.array!(@entreprises) do |entreprise|
  json.extract! entreprise, :id, :nom, :telephone, :adresse, :user_id
  json.url entreprise_url(entreprise, format: :json)
end
