class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.float :amount, :null => false, :default => 0
      t.float :service_tax, :null => false, :default => 0
      t.float :total_amount, :null => false, :default => 0
      t.timestamps
    end
  end
end
