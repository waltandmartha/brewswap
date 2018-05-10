class ProfilesController < ApplicationController
  before_action :check_profile_presence, only: [:new, :create]
  before_action :set_profile, only: [:show, :edit, :update, :new, :create]
  # before_action :auth_actions, only: [:update, :edit]
  before_action :authenticate_user!, except: [:index, :show]

  
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    authorize @profiles 
  end

def user
  user = current_user
end 

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.find(params[:id])
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      puts "PROFILE_PARAMS"
      puts profile_params
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private

  def check_profile_presence 
    # @profile = Profile.current_user
    # @profile = Profile.find(params[:id])
    #  if Profile.params[:id]!= nil redirect_to profile_path
    if !current_user.profile.nil? 
      redirect_to root_url, notice: 'Profile already exists for this account.'
    
    # end
    # else 
    #   new_profile_path
    # if @profile.user != current_user
      # redirect_to root_url 
    end 
  end

  def auth_actions
    authorize @profile
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      # check_profile_presence
      @profile = current_user.profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:username, :bio, :location, :image, :street_address, :city, :postcode, :state, :country_code, :user_id, :latitude, :longitude)
    end

end 