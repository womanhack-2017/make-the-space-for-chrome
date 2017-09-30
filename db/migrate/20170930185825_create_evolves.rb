class CreateEvolves < ActiveRecord::Migration[5.1]
  def change
    create_table :evolves do |t|
      t.text :action

      t.timestamps
    end
  end
end
