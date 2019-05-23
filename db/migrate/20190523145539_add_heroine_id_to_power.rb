class AddHeroineIdToPower < ActiveRecord::Migration[5.1]
  def change
    add_column :powers, :heroine_id, :integer
    add_index :powers, :heroine_id
  end
end
