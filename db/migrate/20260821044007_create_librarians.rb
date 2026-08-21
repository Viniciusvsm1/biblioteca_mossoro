class CreateLibrarians < ActiveRecord::Migration[8.1]
  def change
    create_table :librarians do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :must_change_password

      t.timestamps
    end
  end
end
