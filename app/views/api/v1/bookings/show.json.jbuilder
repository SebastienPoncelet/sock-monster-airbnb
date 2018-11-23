# json.extract! @booking, :id, :status, :price, :user_id, :machine_id


json.booking do
  json.extract! @booking, :id, :status, :price, :user_id, :machine_id

  json.machine do
    json.extract! @booking.machine, :name
  end

  # Nesting user within the current machine to link data in API.
  json.user do
    json.extract! @booking.user, :first_name
  end
end
