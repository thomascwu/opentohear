class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :name

      t.timestamps
    end
  end
end
