class CreateCompanyHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :company_histories do |t|
      t.string :title
      t.text :content

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        CompanyHistory.create_translation_table! :title => :string, :content => :text
      end

      dir.down do
        CompanyHistory.drop_translation_table!
      end
    end

  end
end
