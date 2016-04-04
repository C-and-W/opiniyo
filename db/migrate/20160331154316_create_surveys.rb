class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :link
      t.text :write_up

      t.timestamps null: false
    end
  end
end
