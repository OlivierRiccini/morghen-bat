class RemoveTitleFromCompanyHistory < ActiveRecord::Migration[5.1]
  def change
    remove_column :company_histories, :title, :string
  end
end
