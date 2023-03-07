class ProfileController < ApplicationController
  def me
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to me_profile_index_path, notice: 'Profile was successfully updated.'
    else
      render :me, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar)
  end
end
