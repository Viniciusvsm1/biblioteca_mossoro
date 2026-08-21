json.extract! reader, :id, :name, :cpf, :phone, :email, :loan_password, :created_at, :updated_at
json.url reader_url(reader, format: :json)
