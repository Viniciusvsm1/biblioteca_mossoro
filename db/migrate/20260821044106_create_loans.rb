class CreateLoans < ActiveRecord::Migration[8.1]
  def change
    create_table :loans do |t|
      t.references :book, null: false, foreign_key: true
      t.references :reader, null: false, foreign_key: true
      t.date :due_date

      t.timestamps
    end
  end
end
