class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :pic_duty_id
      t.string :pic_duty_type

      t.timestamps
    end
  end
end
