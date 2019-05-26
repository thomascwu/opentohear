class CreateSpreeAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_abouts do |t|
      t.string :name

      t.timestamps
    end
  end
end
