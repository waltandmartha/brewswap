require 'drinks_controller.rb'

class PostsController < ApplicationController
#   def set_details        
#     DrinksController.get_details(data)
#   end
    #  before_action :set_post, only: [:show, :edit, :update, :destroy]
  #  before_action :auth_actions, only: [:update, :edit, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  skip_before_action :verify_authenticity_token  


  # def action_that_calls_one_from_another_controller
  #   drinks_controller = DrinksController.new
  #   drinks_controller.request = request
  #   drinks_controller.response = response
  #   drinks_controller.create 
   
  # end
  
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    authorize @posts
    username = Profile.last
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @drink = @post.drink
  end



  # GET /posts/new
  def new
    @post = Post.new
    @drink = Drink.new
    # @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    @drink = @post.drink
    # @post.save
    # @drink.save
  end

  # POST /posts
  # POST /posts.json
  def create
    post = Post.new(post_params)
    drink = Drink.new(drink_params)
    # action_that_calls_one_from_another_controller
    # drink.amount_in_ml = params[:amount_in_ml]
    # drink.beer_type = params[:beer_type]
    # drink.number_of_bottles_available = params[:number_of_bottles_available]
    # drink.postcode = params[:postcode]
    # drink.main_ingredient = params[:main_ingredient]

    drink.user = current_user
    post.drink = drink
    post.user = current_user
    
    # authorize @post
    respond_to do |format|
      if post.save && drink.save
        format.html { redirect_to post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    @drink = Drink.find(params[:id]) 
    # @post.drink
    @post.save
    @drink.save
    respond_to do |format|
      if @post.update(post_params) && @drink.update(drink_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @drink = Drink.find(params[:id])
    @drink.destroy
    # if @post.present?
      @post.destroy
    # end
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def auth_actions
   authorize @post 
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :image, :amount_in_ml, :number_of_bottles_available, :beer_type, :main_ingredient, :postcode, :user_id)
    end

    def drink_params
      params.require(:drink).permit(:user_id, :amount_in_ml, :number_of_bottles_available, :beer_type, :main_ingredient, :postcode, :post_id)
    end
end
