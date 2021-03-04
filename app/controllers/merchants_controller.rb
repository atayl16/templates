class MerchantsController < ApplicationController
  before_action :set_merchant, only: %i[ show edit update destroy ]

  # GET /merchants or /merchants.json
  def index
    @merchants = Merchant.all
  end

  # GET /merchants/1 or /merchants/1.json
  def show
    @merchant = Merchant.friendly.find(params[:id])
  end

  # GET /merchants/new
  def new
    @merchant = Merchant.new
  end

  # GET /merchants/1/edit
  def edit
  end

  # POST /merchants or /merchants.json
  def create
    @merchant = Merchant.new(merchant_params)

    respond_to do |format|
      if @merchant.save
        format.html { redirect_to @merchant, notice: "Merchant was successfully created." }
        format.json { render :show, status: :created, location: @merchant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchants/1 or /merchants/1.json
  def update
    respond_to do |format|
      if @merchant.update(merchant_params)
        format.html { redirect_to @merchant, notice: "Merchant was successfully updated." }
        format.json { render :show, status: :ok, location: @merchant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchants/1 or /merchants/1.json
  def destroy
    @merchant.destroy
    respond_to do |format|
      format.html { redirect_to merchants_url, notice: "Merchant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  verticals = %w[ salon business classes events waitlist pet spa barbershop ]

  verticals.each do |vertical|
    define_method(vertical) do
      @merchant = Merchant.friendly.friendly.find(params[:id])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant
      @merchant = Merchant.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merchant_params
      params.require(:merchant).permit(:name, :booking_widget, :waitlist_widget, :class_widget, :logo, :mid, :slug, :image_url, :sentence, :vertical)
    end
end
