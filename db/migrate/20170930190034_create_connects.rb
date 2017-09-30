class CreateConnects < ActiveRecord::Migration[5.1]
  def change
    create_table :connects do |t|
      t.string :title
      t.text :description
      t.text :localized_address_display
      t.datetime :event_date
      t.text :URL

      t.timestamps
    end
  end
end
