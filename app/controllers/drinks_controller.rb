class DrinksController < ApplicationController
  # before_action :set_drink, only: [:show, :edit, :update, :destroy]

  # GET /drinks
  # GET /drinks.json
  def index
    @drinks = Drink.all
  end

  # GET /drinks/1
  # GET /drinks/1.json
  def show
  end

  # GET /drinks/new
  def new
    @post = Post.new
    @drink = Drink.new
  end

  # GET /drinks/1/edit
  def edit
  end

  # POST /drinks
  # POST /drinks.json
  def create
    # params.require(:drink).permit(:user_id, :amount_in_ml, :number_of_bottles_available, :beer_type, :main_ingredient, :postcode, :post_id)
    @drink = Drink.new
    @post = Post.new

    @drink.save 
    end
  end

  # PATCH/PUT /drinks/1
  # PATCH/PUT /drinks/1.json
  def update
    @drink = Drink.find(params[:id])
    @post = Post.find(params[:id])
    # respond_to do |format|
      # if @drink.update(drink_params)
      #   format.html { redirect_to @drink, notice: 'Drink was successfully updated.' }
      #   format.json { render :show, status: :ok, location: @drink }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @drink.errors, status: :unprocessable_entity }
      # end
    # end
  end

  def self.get_details(data)
  end

  # DELETE /drinks/1
  # DELETE /drinks/1.json
  def destroy
    @drink.destroy
    respond_to do |format|
      format.html { redirect_to drinks_url, notice: 'Drink was successfully destroyed.' }
      format.json { head :no_content }
    end
  

  private
#     # Use callbacks to share common setup or constraints between actions.
    def set_drink
      @drink = Drink.find(params[:id])
    end

#     # Never trust parameters from the scary internet, only allow the white list through.
    def drink_params
      params.require(:drink).permit(:user_id, :amount_in_ml, :number_of_bottles_available, :beer_type, :main_ingredient, :postcode, :post_id)
    end
end
