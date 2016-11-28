
class MaestrosController < ApplicationController
  before_action :set_maestro, only: [:show, :edit, :update, :destroy]

  def vincular_salon
    @maestro = @maestro || Maestro.find(params[:maestro_id])
  end

  def vincular
    @maestro = Maestro.find(params[:maestro])
    @salon = Salon.find(params[:salon])
    @maestro.salons << @salon
    redirect_to vincular_con_salon_path(@maestro.id), alert: "Se vinculo #{@salon.nombre} con el maestro #{@maestro.nombre}"
  end

  def quitar_salon
    @maestro = Maestro.find(params[:maestro])
    @salon = Salon.find(params[:salon])
    @maestro.salons.delete(@salon)
    redirect_to vincular_con_salon_path(@maestro.id), alert: "Se elimino el vinculo #{@salon.nombre} con el maestro #{@maestro.nombre}"
  end

  # GET /maestros
  # GET /maestros.json
  def index
    @maestros = Maestro.all
  end

  # GET /maestros/1
  # GET /maestros/1.json
  def show
  end

  # GET /maestros/new
  def new
    @maestro = Maestro.new
  end

  # GET /maestros/1/edit
  def edit
  end

  # POST /maestros
  # POST /maestros.json
  def create
    @maestro = Maestro.new(maestro_params)

    respond_to do |format|
      if @maestro.save
        format.html { redirect_to @maestro, notice: 'Maestro was successfully created.' }
        format.json { render :show, status: :created, location: @maestro }
      else
        format.html { render :new }
        format.json { render json: @maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maestros/1
  # PATCH/PUT /maestros/1.json
  def update
    respond_to do |format|
      if @maestro.update(maestro_params)
        format.html { redirect_to @maestro, notice: 'Maestro was successfully updated.' }
        format.json { render :show, status: :ok, location: @maestro }
      else
        format.html { render :edit }
        format.json { render json: @maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maestros/1
  # DELETE /maestros/1.json
  def destroy
    @maestro.destroy
    respond_to do |format|
      format.html { redirect_to maestros_url, notice: 'Maestro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maestro
      @maestro = Maestro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maestro_params
      params.require(:maestro).permit(:nombre, :edad, :direccion)
    end
end
