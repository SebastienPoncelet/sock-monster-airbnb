json.machines do
  json.array! @machines do |machine|
    json.extract! machine, :id, :name, :location, :photo, :description, :sock_count, :type, :availability, :price, :user_id, :brand
  end
end
