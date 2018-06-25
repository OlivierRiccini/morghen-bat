class CreateCompanyDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :company_details do |t|
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
