class CreateCompanyHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :company_histories do |t|
      t.text :content

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        CompanyHistory.create_translation_table! :content => :text
      end

      dir.down do
        CompanyHistory.drop_translation_table!
      end
    end
  end
end
