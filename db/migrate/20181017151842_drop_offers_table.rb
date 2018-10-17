class DropOffersTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :offers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
