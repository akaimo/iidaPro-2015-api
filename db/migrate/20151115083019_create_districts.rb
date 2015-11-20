class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :area, null: false
      t.string :town, null: false
      t.string :read, null: false
      t.string :read_head, null: false
      t.string :office, null: false
      t.string :normal_1, null: false
      t.string :normal_2, null: false
      t.string :bottle, null: false
      t.string :plastic, null: false
      t.string :mixedPaper, null: false
      t.string :bigRefuse_date, null: false
      t.integer :bigRefuse_1, null: false
      t.integer :bigRefuse_2, null: false
      t.timestamps null: false
    end
  end
end
