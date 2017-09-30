class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.string :name
      t.text :description
      t.text :URL

      t.timestamps
    end
  end
end
