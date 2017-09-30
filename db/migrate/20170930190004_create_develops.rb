class CreateDevelops < ActiveRecord::Migration[5.1]
  def change
    create_table :develops do |t|
      t.string :name
      t.text :description
      t.text :URL

      t.timestamps
    end
  end
end
