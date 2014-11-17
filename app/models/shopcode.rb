class Shopcode < ActiveRecord::Base
	has_many :couponsales, :dependent => :destroy

	# return a shopcode object.
	def self.view_referrals(sc, em)
	     Shopcode.where("shop_code = ? AND email = ?", sc, em).take	
	end
end
