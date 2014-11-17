class ReferralsController < ApplicationController
  before_action :set_shopcode, only: [:view, :show, :index]

  # action to show my referrals
  def show
	  # if we dont have all the params, we redirect.
	  if !(params[:shopcode].blank? or params[:email].blank?) 
	     @shopcode = Shopcode.view_referrals(params[:shopcode].strip, params[:email].strip)
	     if !@shopcode
		 ref_err
	     else
	     	# we get the couponsales collection for the view, max is 5.
	     	@couponsales = @shopcode.couponsales.first(COUPONSALE_MAX)
	     end
	  else 
	     # we render to index 
		 ref_err
	  end
  end


  # GET /referrals (set in config/routes.rb)
  def index
  end
  
  private
    # we render to index with a err msg, and remember the origin values.
    def ref_err
	flash[:shopcode] = params[:shopcode]
	flash[:email] = params[:email]
	flash[:message] = "record not found."
	render :index
    end

    def set_shopcode
    end

    def shopcode_params
	parmas.require(:search).permit(:shopcode, :email)
    end

end
