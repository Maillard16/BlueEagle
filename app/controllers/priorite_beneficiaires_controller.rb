class PrioriteBeneficiairesController < ApplicationController
  before_action :set_priorite_beneficiaire, only: [:show, :edit, :update, :destroy]

  # GET /priorite_beneficiaires
  # GET /priorite_beneficiaires.json
  def index
    @priorite_beneficiaires = PrioriteBeneficiaire.all
  end

  # GET /priorite_beneficiaires/1
  # GET /priorite_beneficiaires/1.json
  def show
  end

  # GET /priorite_beneficiaires/new
  def new
    @priorite_beneficiaire = PrioriteBeneficiaire.new
  end

  # GET /priorite_beneficiaires/1/edit
  def edit
  end

  # POST /priorite_beneficiaires
  # POST /priorite_beneficiaires.json
  def create
    @priorite_beneficiaire = PrioriteBeneficiaire.new(priorite_beneficiaire_params)

    respond_to do |format|
      if @priorite_beneficiaire.save
        format.html { redirect_to @priorite_beneficiaire, notice: 'Priorite beneficiaire was successfully created.' }
        format.json { render :show, status: :created, location: @priorite_beneficiaire }
      else
        format.html { render :new }
        format.json { render json: @priorite_beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priorite_beneficiaires/1
  # PATCH/PUT /priorite_beneficiaires/1.json
  def update
    respond_to do |format|
      if @priorite_beneficiaire.update(priorite_beneficiaire_params)
        format.html { redirect_to @priorite_beneficiaire, notice: 'Priorite beneficiaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @priorite_beneficiaire }
      else
        format.html { render :edit }
        format.json { render json: @priorite_beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priorite_beneficiaires/1
  # DELETE /priorite_beneficiaires/1.json
  def destroy
    @priorite_beneficiaire.destroy
    respond_to do |format|
      format.html { redirect_to priorite_beneficiaires_url, notice: 'Priorite beneficiaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priorite_beneficiaire
      @priorite_beneficiaire = PrioriteBeneficiaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def priorite_beneficiaire_params
      params.require(:priorite_beneficiaire).permit(:description)
    end
end
