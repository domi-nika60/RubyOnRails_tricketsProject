json.extract! ticket, :id, :name, :address, :price, :email_address, :created_at, :updated_at, :phone
json.url ticket_url(ticket, format: :json)
