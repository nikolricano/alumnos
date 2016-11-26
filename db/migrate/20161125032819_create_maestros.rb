class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :nombre
      t.string :edad

      t.timestamps null: false
    end
  end
end
