json.extract! alumno, :id, :nombre, :edad, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)