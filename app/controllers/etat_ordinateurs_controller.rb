class EtatOrdinateursController < ApplicationController
  before_action :set_etat_ordinateur, only: [:show, :edit, :update, :destroy]

  # GET /etat_ordinateurs
  # GET /etat_ordinateurs.json
  def index
    @etat_ordinateurs = EtatOrdinateur.all
  end

  # GET /etat_ordinateurs/1
  # GET /etat_ordinateurs/1.json
  def show
  end

  # GET /etat_ordinateurs/new
  def new
    @etat_ordinateur = EtatOrdinateur.new
  end

  # GET /etat_ordinateurs/1/edit
  def edit
  end

  # POST /etat_ordinateurs
  # POST /etat_ordinateurs.json
  def create
    @etat_ordinateur = EtatOrdinateur.new(etat_ordinateur_params)

    respond_to do |format|
      if @etat_ordinateur.save
        format.html { redirect_to @etat_ordinateur, notice: 'Etat ordinateur was successfully created.' }
        format.json { render :show, status: :created, location: @etat_ordinateur }
      else
        format.html { render :new }
        format.json { render json: @etat_ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etat_ordinateurs/1
  # PATCH/PUT /etat_ordinateurs/1.json
  def update
    respond_to do |format|
      if @etat_ordinateur.update(etat_ordinateur_params)
        format.html { redirect_to @etat_ordinateur, notice: 'Etat ordinateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @etat_ordinateur }
      else
        format.html { render :edit }
        format.json { render json: @etat_ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etat_ordinateurs/1
  # DELETE /etat_ordinateurs/1.json
  def destroy
    @etat_ordinateur.destroy
    respond_to do |format|
      format.html { redirect_to etat_ordinateurs_url, notice: 'Etat ordinateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etat_ordinateur
      @etat_ordinateur = EtatOrdinateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etat_ordinateur_params
      params.require(:etat_ordinateur).permit(:description)
    end
end
