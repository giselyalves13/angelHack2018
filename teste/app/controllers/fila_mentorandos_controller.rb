class FilaMentorandosController < ApplicationController
  before_action :set_fila_mentorando, only: [:show, :edit, :update, :destroy]

  # GET /fila_mentorandos
  # GET /fila_mentorandos.json
  def index
    @fila_mentorandos = FilaMentorando.all
  end

  # GET /fila_mentorandos/1
  # GET /fila_mentorandos/1.json
  def show
  end

  # GET /fila_mentorandos/new
  def new
    @fila_mentorando = FilaMentorando.new
  end

  # GET /fila_mentorandos/1/edit
  def edit
  end

  # POST /fila_mentorandos
  # POST /fila_mentorandos.json
  def create
    @fila_mentorando = FilaMentorando.new(fila_mentorando_params)

    respond_to do |format|
      if @fila_mentorando.save
        format.html { redirect_to @fila_mentorando, notice: 'Fila mentorando was successfully created.' }
        format.json { render :show, status: :created, location: @fila_mentorando }
      else
        format.html { render :new }
        format.json { render json: @fila_mentorando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fila_mentorandos/1
  # PATCH/PUT /fila_mentorandos/1.json
  def update
    respond_to do |format|
      if @fila_mentorando.update(fila_mentorando_params)
        format.html { redirect_to @fila_mentorando, notice: 'Fila mentorando was successfully updated.' }
        format.json { render :show, status: :ok, location: @fila_mentorando }
      else
        format.html { render :edit }
        format.json { render json: @fila_mentorando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fila_mentorandos/1
  # DELETE /fila_mentorandos/1.json
  def destroy
    @fila_mentorando.destroy
    respond_to do |format|
      format.html { redirect_to fila_mentorandos_url, notice: 'Fila mentorando was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fila_mentorando
      @fila_mentorando = FilaMentorando.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fila_mentorando_params
      params.require(:fila_mentorando).permit(:mentorando_id, :habilidade)
    end
end
