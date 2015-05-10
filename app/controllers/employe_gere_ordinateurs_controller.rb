class EmployeGereOrdinateursController < ApplicationController
  before_action :set_employe_gere_ordinateur, only: [:show, :edit, :update, :destroy]

  # GET /employe_gere_ordinateurs
  # GET /employe_gere_ordinateurs.json
  def index
    @employe_gere_ordinateurs = EmployeGereOrdinateur.all
  end

  # GET /employe_gere_ordinateurs/1
  # GET /employe_gere_ordinateurs/1.json
  def show
  end

  # GET /employe_gere_ordinateurs/new
  def new
    @employe_gere_ordinateur = EmployeGereOrdinateur.new
  end

  # GET /employe_gere_ordinateurs/1/edit
  def edit
  end

  # POST /employe_gere_ordinateurs
  # POST /employe_gere_ordinateurs.json
  def create
    @employe_gere_ordinateur = EmployeGereOrdinateur.new(employe_gere_ordinateur_params)

    respond_to do |format|
      if @employe_gere_ordinateur.save
        format.html { redirect_to @employe_gere_ordinateur, notice: 'Employe gere ordinateur was successfully created.' }
        format.json { render :show, status: :created, location: @employe_gere_ordinateur }
      else
        format.html { render :new }
        format.json { render json: @employe_gere_ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employe_gere_ordinateurs/1
  # PATCH/PUT /employe_gere_ordinateurs/1.json
  def update
    respond_to do |format|
      if @employe_gere_ordinateur.update(employe_gere_ordinateur_params)
        format.html { redirect_to @employe_gere_ordinateur, notice: 'Employe gere ordinateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @employe_gere_ordinateur }
      else
        format.html { render :edit }
        format.json { render json: @employe_gere_ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_gere_ordinateurs/1
  # DELETE /employe_gere_ordinateurs/1.json
  def destroy
    @employe_gere_ordinateur.destroy
    respond_to do |format|
      format.html { redirect_to employe_gere_ordinateurs_url, notice: 'Employe gere ordinateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employe_gere_ordinateur
      @employe_gere_ordinateur = EmployeGereOrdinateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employe_gere_ordinateur_params
      params.require(:employe_gere_ordinateur).permit(:date, :etat_ordinateur_preced_id, :etat_ordinateur_acquis_id, :employe_id, :ordinateur_id)
    end
end
