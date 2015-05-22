json.array!(@notifications) do |notification|
  json.extract! notification, :id, :contenu, :id_user, :etat
  json.url notification_url(notification, format: :json)
end
