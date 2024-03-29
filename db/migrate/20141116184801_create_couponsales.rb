class CreateCouponsales < ActiveRecord::Migration
  def change
    create_table :couponsales do |t|
      t.references :shopcode, index: true
      t.integer :order_no
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :shop_code
      t.decimal :amount
      t.decimal :credit
      t.date :purchase_date

      t.timestamps
    end
  end
end
