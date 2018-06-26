class CreateCompanyKnowHows < ActiveRecord::Migration[5.1]
  def change
    create_table :company_know_hows do |t|
      t.text :content
      t.string :icon

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        CompanyKnowHow.create_translation_table! :content => :text
      end

      dir.down do
        CompanyKnowHow.drop_translation_table!
      end
    end

  end
end
