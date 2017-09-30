class CreateThinks < ActiveRecord::Migration[5.1]
  def change
    create_table :thinks do |t|
      t.string :title
      t.string :author
      t.text :source
      t.text :URL

      t.timestamps
    end
  end
end
