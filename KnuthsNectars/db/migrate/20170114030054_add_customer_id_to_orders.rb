class AddCustomerIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer_id, :integer
    remove_column :order_details, :customer_id
  end
end
