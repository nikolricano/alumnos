class AlumnoMaestro < ActiveRecord::Base
  self.table_name = 'alumnos_maestros'
  belongs_to :alumno
  belongs_to :maestro
end