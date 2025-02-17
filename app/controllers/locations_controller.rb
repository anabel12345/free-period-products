class LocationsController < ApplicationController

  before_action :set_location, only: %i[ show edit ]
  invisible_captcha only: [:create]

  # GET /locations or /locations.json
  def index
    if params[:place].present?
      @pagy, @locations = pagy(Location.near(params[:place], 300, order: :distance), items: 8, max_pages: 10)
    else
       @pagy, @locations = pagy(Location.all, items: 5, max_pages: 10)
    end
  end
  
  # GET /locations/1 or /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create

    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to location_url(@location), notice: "Location was successfully created." }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow trusted parameters through.
    def location_params
      params.require(:location).permit(:name, :street, :city, :state, :directions, :latitude, :longitude, :country)
    end
  
   
   
end
