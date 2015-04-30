class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  def index
    @pins = Pin.all
  end

  # GET /pins/1n
  def show
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins
  def create
    @pin = Pin.new(pin_params)

    respond_to do |format|
      if @pin.save
        redirect_to @pin, notice: 'Pin was successfully created.'
      else
        render :new
      end
    end
  end

  # PATCH/PUT /pins/1
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        redirect_to @pin, notice: 'Pin was successfully updated.'
      else
        render action:edit
      end
    end
  end

  # DELETE /pins/1
  def destroy
    @pin.destroy
    respond_to do |format|
      redirect_to pins_url, notice: 'Pin was successfully destroyed.'
      head :no_content
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:description)
    end
end
