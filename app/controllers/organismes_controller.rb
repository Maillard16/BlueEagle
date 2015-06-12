class OrganismesController < ApplicationController
  before_action :set_organisme, only: [:show, :edit, :update, :destroy]

  # GET /organismes
  # GET /organismes.json
  def index
    @organismes = Organisme.all
  end

  # GET /organismes/1
  # GET /organismes/1.json
  def show
  end

  # GET /organismes/new
  def new
    @organisme = Organisme.new
  end

  # GET /organismes/1/edit
  def edit
  end

  # POST /organismes
  # POST /organismes.json
  def create
    @organisme = Organisme.new(organisme_params)

    respond_to do |format|
      if @organisme.save
        format.html { redirect_to @organisme, notice: 'Organisme was successfully created.' }
        format.json { render :show, status: :created, location: @organisme }
      else
        format.html { render :new }
        format.json { render json: @organisme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organismes/1
  # PATCH/PUT /organismes/1.json
  def update
    respond_to do |format|
      if @organisme.update(organisme_params)
        format.html { redirect_to @organisme, notice: 'Organisme was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisme }
        @nb_dispo = get_nb_ordi_dispo
        format.js { render 'update' }
      else
        format.html { render :edit }
        format.json { render json: @organisme.errors, status: :unprocessable_entity }
        format.js { render 'update_fail' }
      end
    end
  end

  # DELETE /organismes/1
  # DELETE /organismes/1.json
  def destroy
    @organisme.destroy
    respond_to do |format|
      format.html { redirect_to organismes_url, notice: 'Organisme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # GET /organismes/donner_ordinateurs
  def donner_ordinateurs
    @nb_ordinateurs_dispo = get_nb_ordi_dispo
    @organismes = Organisme.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisme
      @organisme = Organisme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organisme_params
      params.require(:organisme).permit(:nom, :telephone, :adresse, :user_id, :nb_ordinateurs_dispo)
    end
  
    def get_nb_ordi_dispo
      ordinateurs = Ordinateur.all
      organismes = Organisme.all
      nb_dispo = 0

      for ordinateur in ordinateurs do
        if (ordinateur.beneficiaire_id == nil)
          nb_dispo += 1
        end
      end

      for organisme in organismes do
        if (organisme.nb_ordinateurs_dispo != nil)
          nb_dispo -= organisme.nb_ordinateurs_dispo
        end
      end
      
      return nb_dispo
    end
end
