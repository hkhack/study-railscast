Task.find(:all, :conditions => ["complete=? and priority=?", false, 3])
Task.find(:all, :conditions => ["complete=? and priority IS ?", false, nil])
Task.find(:all, :conditions => ["complete=? and priority IN (?)", false, [1,3]])
Task.find(:all, :conditions => ["complete=? and priority IN (?)", false, 1..3])

Task.find(:all, :conditions => { :complete => false, :priority => 1 })
Task.find(:all, :conditions => { :complete => false, :priority => nil })
Task.find(:all, :conditions => { :complete => false, :priority => [1,3] })
Task.find(:all, :conditions => { :complete => false, :priority => 1..3 })

Task.find_all_by_priority(1..3)
