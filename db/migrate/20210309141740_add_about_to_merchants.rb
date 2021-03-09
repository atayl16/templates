class AddAboutToMerchants < ActiveRecord::Migration[6.1]
  def change
    add_column :merchants, :about, :text
  end
end
