json.extract! calendar, :id, :title, :start_time, :end_time, :public_flag, :allday_flag, :genre, :created_at, :updated_at
json.url calendar_url(calendar, format: :json)
