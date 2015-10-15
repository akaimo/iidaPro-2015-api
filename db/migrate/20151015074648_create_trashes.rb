class CreateTrashes < ActiveRecord::Migration
  def change
    create_table :trashes do |t|
      t.string :title, null: false
      t.string :read, null: false
      t.integer :category_id, null: false, default: 0
      t.integer :knowledge_id
      t.timestamps null: false
    end
  end
end
