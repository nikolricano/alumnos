class CreateAlumnosMaestro < ActiveRecord::Migration
  def change
    create_table :alumnos_maestros do |t|
      t.references :alumno, index: true, foreign_key: true
      t.references :maestro, index: true, foreign_key: true
    end
  end
end
