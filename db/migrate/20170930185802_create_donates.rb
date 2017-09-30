class CreateDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :donates do |t|
      t.string :org_name
      t.text :description
      t.text :URL

      t.timestamps
    end
  end
end
