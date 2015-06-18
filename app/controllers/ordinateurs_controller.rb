class OrdinateursController < ApplicationController
  before_action :set_ordinateur, only: [:show, :edit, :update, :destroy]

  # GET /ordinateurs
  # GET /ordinateurs.json
  def index
    @ordinateurs = Ordinateur.all
  end

  # GET /ordinateurs/1
  # GET /ordinateurs/1.json
  def show
  end

  # GET /ordinateurs/new
  def new
    @ordinateur = Ordinateur.new
    @entreprises = Entreprise.all
    @beneficiaires = Beneficiaire.all
    @etat_ordinateurs = EtatOrdinateur.all
  end

  # GET /ordinateurs/1/edit
  def edit
    @entreprises = Entreprise.all
    @beneficiaires = Beneficiaire.all
    @etat_ordinateurs = EtatOrdinateur.all
  end

  # POST /ordinateurs
  # POST /ordinateurs.json
  def create
    @ordinateur = Ordinateur.new(ordinateur_params)

    respond_to do |format|
      if @ordinateur.save
        format.html { redirect_to @ordinateur, notice: 'Ordinateur was successfully created.' }
        format.json { render :show, status: :created, location: @ordinateur }
      else
        format.html { render :new }
        format.json { render json: @ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordinateurs/1
  # PATCH/PUT /ordinateurs/1.json
  def update
    respond_to do |format|
      ancien_etat = @ordinateur.etat_ordinateur_id
      if @ordinateur.update(ordinateur_params)        
        employeGereOrdinateur = EmployeGereOrdinateur.new
        employeGereOrdinateur.etat_ordinateur_preced_id = ancien_etat
        employeGereOrdinateur.etat_ordinateur_acquis_id = @ordinateur.etat_ordinateur_id
        employeGereOrdinateur.employe_id = current_user.id
        employeGereOrdinateur.ordinateur_id = @ordinateur.id
        employeGereOrdinateur.date = Date.current
        employeGereOrdinateur.save
        format.html { redirect_to @ordinateur, notice: 'Ordinateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordinateur }
      else
        format.html { render :edit }
        format.json { render json: @ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordinateurs/1
  # DELETE /ordinateurs/1.json
  def destroy
    @ordinateur.destroy
    respond_to do |format|
      format.html { redirect_to ordinateurs_url, notice: 'Ordinateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def index_for_entreprise
    @entreprise = Entreprise.find_by(user_id: current_user.id)
    @ordinateurs = Ordinateur.where(entreprise_id: @entreprise.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordinateur
      @ordinateur = Ordinateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordinateur_params
      params.require(:ordinateur).permit(:numero, :description, :entreprise_id, :beneficiaire_id, :etat_ordinateur_id)
    end
end
