class Maestro < ActiveRecord::Base
	belongs_to :salon
	has_and_belongs_to_many :maestros
end
