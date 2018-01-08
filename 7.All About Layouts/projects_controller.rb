layout :user_layout

def index
  @projects = Project.find(:all)
  render :layout => 'projects'
end

protected

def user_layout
  if current_user.admin?
    "admin"
  else
    "application"
  end
end
