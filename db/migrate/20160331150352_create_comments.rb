class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :write_up
      t.string :name
      t.integer :age
      t.integer :report_id

      t.timestamps null: false
    end
  end
end
