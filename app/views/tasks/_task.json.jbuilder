json.extract! task, :id, :name, :project_id, :Description, :assigned_to, :due, :_date, :is_done, :created_at, :updated_at
json.url task_url(task, format: :json)
