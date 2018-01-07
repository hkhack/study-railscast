def index
  @tasks = Task.find_incomplete
end
