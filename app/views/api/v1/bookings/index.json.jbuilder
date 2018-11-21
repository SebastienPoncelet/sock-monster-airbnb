json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :status, :price, :user_id, :machine_id
  end
end
