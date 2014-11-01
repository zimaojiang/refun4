class CreateShopcodes < ActiveRecord::Migration
  def change
    create_table :shopcodes do |t|
      t.integer :order_no
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :shop_code
      t.integer :store_credit
      t.date :issue_date
      t.date :exp_date
      t.text :comment
      t.integer :status

      t.timestamps
    end
  end
end
