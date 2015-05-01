class EntreprisesController < ApplicationController
  before_action :set_entreprise, only: [:show, :edit, :update, :destroy]

  # GET /entreprises
  # GET /entreprises.json
  def index
    @entreprises = Entreprise.all
  end

  # GET /entreprises/1
  # GET /entreprises/1.json
  def show
  end

  # GET /entreprises/new
  def new
    @entreprise = Entreprise.new
  end

  # GET /entreprises/1/edit
  def edit
  end

  # POST /entreprises
  # POST /entreprises.json
  def create
    @entreprise = Entreprise.new(entreprise_params)

    respond_to do |format|
      if @entreprise.save
        format.html { redirect_to @entreprise, notice: 'Entreprise was successfully created.' }
        format.json { render :show, status: :created, location: @entreprise }
      else
        format.html { render :new }
        format.json { render json: @entreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entreprises/1
  # PATCH/PUT /entreprises/1.json
  def update
    respond_to do |format|
      if @entreprise.update(entreprise_params)
        format.html { redirect_to @entreprise, notice: 'Entreprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @entreprise }
      else
        format.html { render :edit }
        format.json { render json: @entreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entreprises/1
  # DELETE /entreprises/1.json
  def destroy
    @entreprise.destroy
    respond_to do |format|
      format.html { redirect_to entreprises_url, notice: 'Entreprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entreprise
      @entreprise = Entreprise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entreprise_params
      params.require(:entreprise).permit(:nom, :telephone, :adresse)
    end
end
