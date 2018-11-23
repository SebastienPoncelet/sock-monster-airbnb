json.machine do
  json.extract! @machine, :id, :name, :location, :photo, :description, :sock_count, :type, :availability, :price, :user_id, :brand

  # Nesting user within the current machine to link data in API.
  json.user do
    json.extract! @machine.user, :first_name
  end
end
