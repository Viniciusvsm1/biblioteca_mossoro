json.extract! loan, :id, :book_id, :reader_id, :due_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
