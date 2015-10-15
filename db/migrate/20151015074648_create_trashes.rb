class CreateTrashes < ActiveRecord::Migration
  def change
    create_table :trashes do |t|

      t.timestamps null: false
    end
  end
end
