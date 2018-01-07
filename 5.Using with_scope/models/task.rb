def self.find_incomplete(options = {})
  with_scope :find => options do
    find_all_by_complete(false, :order => 'created_at DESC')
  end
end


# with_scope 详情见 https://apidock.com/rails/ActiveRecord/Base/with_scope/class
