class CreateSpreeHears < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_hears do |t|
      t.string :name

      t.timestamps
    end
  end
end
