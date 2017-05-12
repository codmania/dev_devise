class CreateSharedTimelines < ActiveRecord::Migration
  def change
    create_table :shared_timelines do |t|
      t.integer "user_id"
      t.integer "timeline_id"
      t.string  "email", default: "", null: false

      t.timestamps null: false
    end
  end
end
