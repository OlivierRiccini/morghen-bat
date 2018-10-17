class CreatePacks < ActiveRecord::Migration[5.1]
  def change
    create_table :packs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    reversible do |dir|
        dir.up do
          Pack.create_translation_table! :title => :string, :description => :text
        end

        dir.down do
          Pack.drop_translation_table!
        end
      end
  end
end
