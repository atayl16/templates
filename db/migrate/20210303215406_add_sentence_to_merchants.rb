class AddSentenceToMerchants < ActiveRecord::Migration[6.1]
  def change
    add_column :merchants, :sentence, :text
  end
end
