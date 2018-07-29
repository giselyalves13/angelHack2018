class FilaMentorsController < ApplicationController
  before_action :set_fila_mentor, only: [:show, :edit, :update, :destroy]

  # GET /fila_mentors
  # GET /fila_mentors.json
  def index
    @fila_mentors = FilaMentor.all
  end

  # GET /fila_mentors/1
  # GET /fila_mentors/1.json
  def show
  end

  # GET /fila_mentors/new
  def new
    @fila_mentor = FilaMentor.new
  end

  # GET /fila_mentors/1/edit
  def edit
  end

  # POST /fila_mentors
  # POST /fila_mentors.json
  def create
    @fila_mentor = FilaMentor.new(fila_mentor_params)

    respond_to do |format|
      if @fila_mentor.save
        format.html { redirect_to @fila_mentor, notice: 'Fila mentor was successfully created.' }
        format.json { render :show, status: :created, location: @fila_mentor }
      else
        format.html { render :new }
        format.json { render json: @fila_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fila_mentors/1
  # PATCH/PUT /fila_mentors/1.json
  def update
    respond_to do |format|
      if @fila_mentor.update(fila_mentor_params)
        format.html { redirect_to @fila_mentor, notice: 'Fila mentor was successfully updated.' }
        format.json { render :show, status: :ok, location: @fila_mentor }
      else
        format.html { render :edit }
        format.json { render json: @fila_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fila_mentors/1
  # DELETE /fila_mentors/1.json
  def destroy
    @fila_mentor.destroy
    respond_to do |format|
      format.html { redirect_to fila_mentors_url, notice: 'Fila mentor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fila_mentor
      @fila_mentor = FilaMentor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fila_mentor_params
      params.require(:fila_mentor).permit(:mentor_id, :habilidade)
    end
end
