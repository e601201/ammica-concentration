class AvatorsController < ApplicationController
  def destroy
    user = User.find(params[:id])
    user.avatar.purge
    redirect_back fallback_location: users_path, notice: "Avatar was successfully destroyed.", status: :see_other
  end
end
