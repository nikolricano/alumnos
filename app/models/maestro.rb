class Maestro < ActiveRecord::Base
  has_many :alumnos, through: :alumno_maestros
  has_many :alumno_maestros
end
