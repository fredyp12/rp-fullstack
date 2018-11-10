class CreateTableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :table_users do |t|
      t.string :name
      t.string :email
      t.decimal :documento
      t.string :direccion
      t.string :ocupacion

      t.timestamps
    end
  end
end
