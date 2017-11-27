class RegistrationsController < Devise::RegistrationsController

  skip_before_action :require_no_authentication, only: [:new , :create, :update ]

  def new
  	 super
  end


 def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
     authorize! :create,  @user
  end
 

  def update
    super
  end

end

private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

