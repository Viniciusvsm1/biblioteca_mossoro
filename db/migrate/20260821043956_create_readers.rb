class CreateReaders < ActiveRecord::Migration[8.1]
  def change
    create_table :readers do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :email
      t.string :loan_password

      t.timestamps
    end
  end
end
