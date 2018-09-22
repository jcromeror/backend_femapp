class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nit
      t.string :type_nit
      t.string :names
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :gender
      t.string :phone
      t.string :address
      t.belongs_to :role, foreign_key: true

      t.timestamps
    end
  end
end
