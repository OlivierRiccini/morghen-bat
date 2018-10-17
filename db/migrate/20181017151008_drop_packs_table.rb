class DropPacksTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :packs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
