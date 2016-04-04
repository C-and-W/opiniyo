class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name
      t.integer :votes, default: 0
      t.integer :poll_id

      t.timestamps null: false
    end
  end
end
