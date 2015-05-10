json.array!(@priorite_beneficiaires) do |priorite_beneficiaire|
  json.extract! priorite_beneficiaire, :id, :description
  json.url priorite_beneficiaire_url(priorite_beneficiaire, format: :json)
end
