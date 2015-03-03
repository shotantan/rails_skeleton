class MailenablesController < ApplicationController
  before_action :set_mailenable, only: [:show, :edit, :update, :destroy]

  # GET /mailenables
  def index
    @mailenables = Mailenable.all
  end

  # GET /mailenables/1
  def show
  end

  # GET /mailenables/new
  def new
    @mailenable = Mailenable.new
  end

  # GET /mailenables/1/edit
  def edit
  end

  # POST /mailenables
  def create
    @mailenable = Mailenable.new(mailenable_params)

    if @mailenable.save
      redirect_to @mailenable, notice: 'Mailenable was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mailenables/1
  def update
    if @mailenable.update(mailenable_params)
      redirect_to @mailenable, notice: 'Mailenable was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mailenables/1
  def destroy
    @mailenable.destroy
    redirect_to mailenables_url, notice: 'Mailenable was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailenable
      @mailenable = Mailenable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mailenable_params
      params.require(:mailenable).permit(:name)
    end
end
