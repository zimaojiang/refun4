json.array!(@shopcodes) do |shopcode|
  json.extract! shopcode, :id, :order_no, :first_name, :last_name, :email, :shop_code, :store_credit, :issue_date, :exp_date, :comment, :status
  json.url shopcode_url(shopcode, format: :json)
end
