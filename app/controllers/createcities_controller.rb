class CreatecitiesController < ApplicationController
  before_action :set_createcity, only: %i[ show edit update destroy ]

  # GET /createcities or /createcities.json
  def index
    @createcities = Createcity.all
  end

  # GET /createcities/1 or /createcities/1.json
  def show
  end

  # GET /createcities/new
  def new
    @createcity = Createcity.new
  end

  # GET /createcities/1/edit
  def edit
  end

  # POST /createcities or /createcities.json
  def create
    @createcity = Createcity.new(createcity_params)

    respond_to do |format|
      if @createcity.save
        format.html { redirect_to createcity_url(@createcity), notice: "Createcity was successfully created." }
        format.json { render :show, status: :created, location: @createcity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @createcity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /createcities/1 or /createcities/1.json
  def update
    respond_to do |format|
      if @createcity.update(createcity_params)
        format.html { redirect_to createcity_url(@createcity), notice: "Createcity was successfully updated." }
        format.json { render :show, status: :ok, location: @createcity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @createcity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /createcities/1 or /createcities/1.json
  def destroy
    @createcity.destroy

    respond_to do |format|
      format.html { redirect_to createcities_url, notice: "Createcity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_createcity
      @createcity = Createcity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def createcity_params
      params.require(:createcity).permit(:name, :country, :highlights)
    end
end
