class CreateSpreeContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_contacts do |t|
      t.string :name

      t.timestamps
    end
  end
end
