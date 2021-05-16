class ColidsController < ApplicationController
  before_action :set_colid, only: %i[ show edit update destroy ]

  # GET /colids or /colids.json
  def index
    @colids = Colid.all
  end

  # GET /colids/1 or /colids/1.json
  def show
  end

  # GET /colids/new
  def new
    @colid = Colid.new
  end

  # GET /colids/1/edit
  def edit
  end

  # POST /colids or /colids.json
  def create
    @colid = Colid.new(colid_params)

    respond_to do |format|
      if @colid.save
        format.html { redirect_to @colid, notice: "Colid was successfully created." }
        format.json { render :show, status: :created, location: @colid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @colid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colids/1 or /colids/1.json
  def update
    respond_to do |format|
      if @colid.update(colid_params)
        format.html { redirect_to @colid, notice: "Colid was successfully updated." }
        format.json { render :show, status: :ok, location: @colid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @colid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colids/1 or /colids/1.json
  def destroy
    @colid.destroy
    respond_to do |format|
      format.html { redirect_to colids_url, notice: "Colid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colid
      @colid = Colid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colid_params
      params.require(:colid).permit(:name, :phone, :email, :staff, :location)
    end
end
