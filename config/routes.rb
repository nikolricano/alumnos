Rails.application.routes.draw do
  get 'maestros/vincular_con_salon/:maestro_id', to: 'maestros#vincular_salon', as: 'vincular_con_salon'
  post 'maestros/vincular'
  delete 'maestros/quitar_salon/:maestro/:salon', to: 'maestros#quitar_salon', as: 'quitar_salon'

  get 'salons/vincular_con_alumno/:salon_id', to: 'salons#vincular_alumno', as: 'vincular_con_alumno'
  post 'salons/vincular'
  delete 'salons/quitar_alumno/:salon/:alumno', to: 'salons#quitar_alumno', as: 'quitar_alumno'

  resources :maestros
  resources :salons
  resources :alumnos

end