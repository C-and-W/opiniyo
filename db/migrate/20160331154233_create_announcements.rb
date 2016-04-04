class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :write_up

      t.timestamps null: false
    end
  end
end
