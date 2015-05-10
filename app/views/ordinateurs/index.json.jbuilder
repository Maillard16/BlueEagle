json.array!(@ordinateurs) do |ordinateur|
  json.extract! ordinateur, :id, :numero, :description, :entreprise_id, :beneficiaire_id, :etat_ordinateur_id
  json.url ordinateur_url(ordinateur, format: :json)
end
