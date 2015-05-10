json.array!(@employe_gere_ordinateurs) do |employe_gere_ordinateur|
  json.extract! employe_gere_ordinateur, :id, :date, :etat_ordinateur_preced_id, :etat_ordinateur_acquis_id, :employe_id, :ordinateur_id
  json.url employe_gere_ordinateur_url(employe_gere_ordinateur, format: :json)
end
