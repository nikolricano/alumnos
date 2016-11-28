class CreateAlumnosSanlon < ActiveRecord::Migration
  def change
    create_table :alumnos_sanlons do |t|
      t.references :alumno, index: true, foreign_key: true
      t.references :salon, index: true, foreign_key: true
    end
  end
end
