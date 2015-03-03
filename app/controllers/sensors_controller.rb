class SensorsController < ApplicationController
  before_action :set_sensor, only: [:show, :edit, :update, :destroy]

  # GET /sensors
  def index
    @sensors = Sensor.all
  end

  # GET /sensors/1
  def show
  end

  # GET /sensors/new
  def new
    @sensor = Sensor.new
  end

  # GET /sensors/1/edit
  def edit
  end

  # POST /sensors
  def create
    @sensor = Sensor.new(sensor_params)

    if @sensor.save
      redirect_to @sensor, notice: 'Sensor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sensors/1
  def update
    if @sensor.update(sensor_params)
      redirect_to @sensor, notice: 'Sensor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sensors/1
  def destroy
    @sensor.destroy
    redirect_to sensors_url, notice: 'Sensor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sensor_params
      params.require(:sensor).permit(:name, :mac_address, :description)
    end
end
