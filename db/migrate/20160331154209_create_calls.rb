class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :event
      t.string :date
      t.string :time
      t.string :venue

      t.timestamps null: false
    end
  end
end
