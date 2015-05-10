class BeneficiairesController < ApplicationController
  before_action :set_beneficiaire, only: [:show, :edit, :update, :destroy]

  # GET /beneficiaires
  # GET /beneficiaires.json
  def index
    @beneficiaires = Beneficiaire.all
  end

  # GET /beneficiaires/1
  # GET /beneficiaires/1.json
  def show
  end

  # GET /beneficiaires/new
  def new
    @beneficiaire = Beneficiaire.new
  end

  # GET /beneficiaires/1/edit
  def edit
  end

  # POST /beneficiaires
  # POST /beneficiaires.json
  def create
    @beneficiaire = Beneficiaire.new(beneficiaire_params)

    respond_to do |format|
      if @beneficiaire.save
        format.html { redirect_to @beneficiaire, notice: 'Beneficiaire was successfully created.' }
        format.json { render :show, status: :created, location: @beneficiaire }
      else
        format.html { render :new }
        format.json { render json: @beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiaires/1
  # PATCH/PUT /beneficiaires/1.json
  def update
    respond_to do |format|
      if @beneficiaire.update(beneficiaire_params)
        format.html { redirect_to @beneficiaire, notice: 'Beneficiaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficiaire }
      else
        format.html { render :edit }
        format.json { render json: @beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaires/1
  # DELETE /beneficiaires/1.json
  def destroy
    @beneficiaire.destroy
    respond_to do |format|
      format.html { redirect_to beneficiaires_url, notice: 'Beneficiaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiaire
      @beneficiaire = Beneficiaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficiaire_params
      params.require(:beneficiaire).permit(:prenom, :nom, :telephone, :adresse, :organisme_id, :priorite_beneficiaire_id)
    end
end
