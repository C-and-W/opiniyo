class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.string :title
      t.text :write_up

      t.timestamps null: false
    end
  end
end
