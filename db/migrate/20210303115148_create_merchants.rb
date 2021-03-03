class CreateMerchants < ActiveRecord::Migration[6.1]
  def change
    create_table :merchants do |t|
      t.string :name
      t.text :booking_widget
      t.text :waitlist_widget
      t.text :class_widget
      t.text :logo
      t.string :mid
      t.string :slug
      t.text :image_url

      t.timestamps
    end
    add_index :merchants, :slug, unique: true
  end
end
