class Shopcode < ActiveRecord::Base
	
	# return a shopcode object.
	def self.view_referrals(sc, em)
	     Shopcode.where("shop_code = ? AND email = ?", sc, em).take	
	end
end
