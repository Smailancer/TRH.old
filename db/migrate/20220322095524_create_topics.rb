class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.text :text
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
