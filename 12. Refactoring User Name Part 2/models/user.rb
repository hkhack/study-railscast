def full_name
  [first_name, middle_initial_with_period, last_name].compact.join(' ')
end

def middle_initial_with_period
  "#{middle_initial}." unless middle_initial.blank?
end
