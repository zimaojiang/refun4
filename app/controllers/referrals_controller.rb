class ReferralsController < ApplicationController
  before_action :set_shopcode, only: [:view, :show, :index]

  # action to show my referrals
  def show
	  # if we dont have all the params, we redirect.
	  if !(params[:shopcode].blank? or params[:email].blank?) 
		  puts "**** call view_referrals"
	     @shopcode = Shopcode.view_referrals(params[:shopcode].strip, params[:email].strip)
	     if !@shopcode
		 ref_err
	     end

	  else 
	     # we render to index 
		 ref_err
	  end
  end

  def view
	  format.html { render :view }
	  @shopcode = Shopcode.find(params[:shopcode, :email])
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
