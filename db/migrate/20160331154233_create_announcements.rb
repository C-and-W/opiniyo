class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.text :write_up

      t.timestamps null: false
    end
  end
end
