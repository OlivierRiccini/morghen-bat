class CreateCompanyValues < ActiveRecord::Migration[5.1]
  def change
    create_table :company_values do |t|
      t.text :content
      t.string :icon

      t.timestamps
    end
  end
end
