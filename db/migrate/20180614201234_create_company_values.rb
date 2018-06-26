class CreateCompanyValues < ActiveRecord::Migration[5.1]
  def change
    create_table :company_values do |t|
      t.text :content
      t.string :icon

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        CompanyValue.create_translation_table! :content => :text
      end

      dir.down do
        CompanyValue.drop_translation_table!
      end
    end

  end
end
