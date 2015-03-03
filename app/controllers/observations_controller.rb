class ObservationsController < ApplicationController
  before_action :set_observation, only: [:show, :edit, :update, :destroy]

  # GET /observations
  def index
    @observations = Observation.all
  end

  # GET /observations/1
  def show
  end

  # GET /observations/new
  def new
    @observation = Observation.new
  end

  # GET /observations/1/edit
  def edit
  end

  # POST /observations
  def create
    @observation = Observation.new(observation_params)

    if @observation.save
      redirect_to @observation, notice: 'Observation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /observations/1
  def update
    if @observation.update(observation_params)
      redirect_to @observation, notice: 'Observation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /observations/1
  def destroy
    @observation.destroy
    redirect_to observations_url, notice: 'Observation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation
      @observation = Observation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def observation_params
      params.require(:observation).permit(:battery, :door)
    end
end
