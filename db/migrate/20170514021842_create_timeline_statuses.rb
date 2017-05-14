class CreateTimelineStatuses < ActiveRecord::Migration
  def change
    create_table :timeline_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
