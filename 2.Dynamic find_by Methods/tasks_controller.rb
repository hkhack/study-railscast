def incomplete
  @tasks = Task.find_all_by_complete(false)
end

def last_incomplete
  @task = Task.find_by_complete(false, :order => 'created_at DESC')
end
