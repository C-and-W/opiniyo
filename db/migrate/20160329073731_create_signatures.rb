class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :petition_id

      t.timestamps null: false
    end
  end
end
