class CreateCompanyHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :company_histories do |t|
      t.text :content

      t.timestamps
    end
  end
end
