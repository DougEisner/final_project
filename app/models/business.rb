class Business < User

  ENTITY = [['Select Company Size', 0], ['< 50', 1], ['50 > 250', 2], ['> 250', 3]]

  def is_admin?
    false
  end
end
