class AddDefaultToMerchants < ActiveRecord::Migration[6.1]
  def change
    add_column :merchants, :vertical, :string
  end
end
