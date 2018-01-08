def self.all_names
  find(:all).collect(&:name)
end
