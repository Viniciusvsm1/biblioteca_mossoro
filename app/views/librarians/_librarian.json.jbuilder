json.extract! librarian, :id, :name, :email, :password_digest, :must_change_password, :created_at, :updated_at
json.url librarian_url(librarian, format: :json)
