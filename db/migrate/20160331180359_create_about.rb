class CreateAbout < ActiveRecord::Migration
  def change
    create_table :about do |t|
      t.text :write_up
    end
  end
end
