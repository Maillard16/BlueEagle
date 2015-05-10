json.array!(@beneficiaires) do |beneficiaire|
  json.extract! beneficiaire, :id, :prenom, :nom, :telephone, :adresse, :organisme_id, :priorite_beneficiaire_id
  json.url beneficiaire_url(beneficiaire, format: :json)
end
