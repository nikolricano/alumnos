class Maestro < ActiveRecord::Base
  has_and_belongs_to_many :salons
  has_many :alumnos, through: :alumno_maestros
  has_many :alumno_maestros
end