class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :write_up
      t.string :name
      t.integer :age
      t.boolean :noted, default: false

      t.timestamps null: false
    end
  end
end
