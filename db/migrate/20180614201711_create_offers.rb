class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :category
      t.float :price
      t.integer :time_frame
      t.text :content

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Offer.create_translation_table! :name => :string, :category => :string, :content => :text
      end

      dir.down do
        Offer.drop_translation_table!
      end
    end

  end
end
