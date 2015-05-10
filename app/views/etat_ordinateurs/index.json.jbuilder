json.array!(@etat_ordinateurs) do |etat_ordinateur|
  json.extract! etat_ordinateur, :id, :description
  json.url etat_ordinateur_url(etat_ordinateur, format: :json)
end
