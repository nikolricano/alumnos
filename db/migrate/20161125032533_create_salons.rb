class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps null: false
    end
  end
end
