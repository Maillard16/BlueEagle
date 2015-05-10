class RendezVousController < ApplicationController
  before_action :set_rendez_vou, only: [:show, :edit, :update, :destroy]

  # GET /rendez_vous
  # GET /rendez_vous.json
  def index
    @rendez_vous = RendezVou.all
  end

  # GET /rendez_vous/1
  # GET /rendez_vous/1.json
  def show
  end

  # GET /rendez_vous/new
  def new
    @rendez_vou = RendezVou.new
  end

  # GET /rendez_vous/1/edit
  def edit
  end

  # POST /rendez_vous
  # POST /rendez_vous.json
  def create
    @rendez_vou = RendezVou.new(rendez_vou_params)

    respond_to do |format|
      if @rendez_vou.save
        format.html { redirect_to @rendez_vou, notice: 'Rendez vou was successfully created.' }
        format.json { render :show, status: :created, location: @rendez_vou }
      else
        format.html { render :new }
        format.json { render json: @rendez_vou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rendez_vous/1
  # PATCH/PUT /rendez_vous/1.json
  def update
    respond_to do |format|
      if @rendez_vou.update(rendez_vou_params)
        format.html { redirect_to @rendez_vou, notice: 'Rendez vou was successfully updated.' }
        format.json { render :show, status: :ok, location: @rendez_vou }
      else
        format.html { render :edit }
        format.json { render json: @rendez_vou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rendez_vous/1
  # DELETE /rendez_vous/1.json
  def destroy
    @rendez_vou.destroy
    respond_to do |format|
      format.html { redirect_to rendez_vous_url, notice: 'Rendez vou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendez_vou
      @rendez_vou = RendezVou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendez_vou_params
      params.require(:rendez_vou).permit(:date, :beneficiaire_id, :employe_id)
    end
end
