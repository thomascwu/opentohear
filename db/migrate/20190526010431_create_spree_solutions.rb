class CreateSpreeSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_solutions do |t|
      t.string :name

      t.timestamps
    end
  end
end
