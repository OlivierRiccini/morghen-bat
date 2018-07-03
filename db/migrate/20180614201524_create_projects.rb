class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.string :category
      t.text :content
      t.integer :budget
      t.integer :area
      t.string :time_frame

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Project.create_translation_table! :name => :string, :location => :string, :category => :string, :content => :text, :time_frame => :string
      end

      dir.down do
        Project.drop_translation_table!
      end
    end

  end
end
