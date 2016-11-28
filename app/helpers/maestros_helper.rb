module MaestrosHelper

  def salones_disponibles
    Salon.all - @maestro.salons
  end

end