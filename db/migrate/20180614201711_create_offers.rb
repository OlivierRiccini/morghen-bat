class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :category
      t.float :price
      t.integer :time_frame

      t.timestamps
    end
  end
end
