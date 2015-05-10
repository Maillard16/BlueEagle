json.array!(@rendez_vous) do |rendez_vou|
  json.extract! rendez_vou, :id, :date, :beneficiaire_id, :employe_id
  json.url rendez_vou_url(rendez_vou, format: :json)
end
