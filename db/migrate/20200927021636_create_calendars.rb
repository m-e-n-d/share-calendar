class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :public_flag
      t.boolean :allday_flag
      t.string :genre

      t.timestamps
    end
  end
end
