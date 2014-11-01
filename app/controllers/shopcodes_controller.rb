class ShopcodesController < ApplicationController
  before_action :set_shopcode, only: [:show, :edit, :update, :destroy]

  # GET /shopcodes
  # GET /shopcodes.json
  def index
    @shopcodes = Shopcode.all
  end

  # GET /shopcodes/1
  # GET /shopcodes/1.json
  def show
  end

  # GET /shopcodes/new
  def new
    @shopcode = Shopcode.new
  end

  # GET /shopcodes/1/edit
  def edit
  end

  # POST /shopcodes
  # POST /shopcodes.json
  def create
    @shopcode = Shopcode.new(shopcode_params)

    respond_to do |format|
      if @shopcode.save
        format.html { redirect_to @shopcode, notice: 'Shopcode was successfully created.' }
        format.json { render :show, status: :created, location: @shopcode }
      else
        format.html { render :new }
        format.json { render json: @shopcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopcodes/1
  # PATCH/PUT /shopcodes/1.json
  def update
    respond_to do |format|
      if @shopcode.update(shopcode_params)
        format.html { redirect_to @shopcode, notice: 'Shopcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopcode }
      else
        format.html { render :edit }
        format.json { render json: @shopcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopcodes/1
  # DELETE /shopcodes/1.json
  def destroy
    @shopcode.destroy
    respond_to do |format|
      format.html { redirect_to shopcodes_url, notice: 'Shopcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopcode
      @shopcode = Shopcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopcode_params
      params.require(:shopcode).permit(:order_no, :first_name, :last_name, :email, :shop_code, :store_credit, :issue_date, :exp_date, :comment, :status)
    end
end
