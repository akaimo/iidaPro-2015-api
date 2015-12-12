class CreateTrashes < ActiveRecord::Migration
  def change
    create_table :trashes do |t|
      t.string :title, null: false
      t.string :read, null: false
      t.string :read_head, null: false
      t.string :category, null: false
      t.string :all_category, null: false
      t.string :info, null: false
      t.timestamps null: false
    end
  end
end
