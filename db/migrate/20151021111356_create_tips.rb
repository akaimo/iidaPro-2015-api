class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title, null: false
      t.string :detail, null: false
      t.string :genre, null: false
      t.timestamps null: false
    end
  end
end
