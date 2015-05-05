class ShoutsController < ApplicationController
  def create
    shout = current_user.shouts.build(shouts_param)
    shout.save
    redirect_to dashboard_path

  end
  def show
  	@shout = Shout.find(params[:id])
  end
  private
  def shouts_param
  	params.require(:shout).permit(:body)
  end
end
