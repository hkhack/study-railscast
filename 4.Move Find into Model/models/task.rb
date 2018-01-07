def self.find_incomplete
  find_all_by_complete(false, :order => 'created_at DESC')
end
