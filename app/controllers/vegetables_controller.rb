class VegetablesController < ApplicationController
  before_action :set_vegetable, only: %i[ show update destroy ]

  # GET /vegetables
  # GET /vegetables.json
  def index
    @vegetables = Vegetable.all
    render json: @vegetables, status: :ok
  end

  # GET /vegetables/1
  # GET /vegetables/1.json
  def show
  end

  # POST /vegetables
  # POST /vegetables.json
  def create
    @vegetable = Vegetable.new(vegetable_params)

    if @vegetable.save
      render :show, status: :created, location: @vegetable
    else
      render json: @vegetable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vegetables/1
  # PATCH/PUT /vegetables/1.json
  def update
    if @vegetable.update(vegetable_params)
      render :show, status: :ok, location: @vegetable
    else
      render json: @vegetable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vegetables/1
  # DELETE /vegetables/1.json
  def destroy
    @vegetable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vegetable_params
      params.require(:vegetable).permit(:name, :price, :nutritional_benefit, :image_url)
    end
end
