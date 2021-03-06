def test_full_name
  assert_equal 'John Doe', full_name('John', nil, 'Doe'), "nil middle initial"
  assert_equal 'John H. Doe', full_name('John', 'H', 'Doe'), "H middle initial"
  assert_equal 'John Doe', full_name('John', '', 'Doe'), "blank middle initial"
end

def full_name(first, middle, last)
  User.new(:first_name => first, :middle_initial => middle, :last_name => last).full_name
end
