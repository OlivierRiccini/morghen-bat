class CreateCompanyKnowHows < ActiveRecord::Migration[5.1]
  def change
    create_table :company_know_hows do |t|
      t.text :content
      t.string :icon

      t.timestamps
    end
  end
end
