class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.text :information
      t.string :deadline

      t.timestamps null: false
    end
  end
end
