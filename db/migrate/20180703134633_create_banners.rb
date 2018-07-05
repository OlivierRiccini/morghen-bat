class CreateBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :banners do |t|
      t.string :image
      t.text :tagline

      t.timestamps
    end
    reversible do |dir|
        dir.up do
          Banner.create_translation_table! :tagline => :text
        end

        dir.down do
          Banner.drop_translation_table!
        end
      end
  end
end
