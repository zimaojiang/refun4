class ReferralsController < ApplicationController
  before_action :set_shopcode, only: [:view, :show, :index]

  def show
#	  format.html { render :view }
	  @shopcode = Shopcode.find(40)
  end

  def view
	  format.html { render :view }
	  @shopcode = Shopcode.find(params[:shopcode, :email])
  end

  # GET /referrals (set in config/routes.rb)
  def index
  end
  
  private
    def set_shopcode
#	   @shopcode = Shopcode.find(params[:shopcode, :email])
	   @shopcode = Shopcode.find(43)
    end

    def shopcode_params
	parmas.require(:shopcode).permit(:shopcode, :email)
    end

end
