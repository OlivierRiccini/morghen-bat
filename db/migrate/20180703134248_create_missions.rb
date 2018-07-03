class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.text :content

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Mission.create_translation_table! :content => :text
      end

      dir.down do
        Mission.drop_translation_table!
      end
    end
  end
end
