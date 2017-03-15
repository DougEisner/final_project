class Academic < User

  RESEARCHAREA = [['Select Reseach Area', 'Select Reseach Area'], ['Biology', 'Biology'], ['Chemistry', 'Chemistry'], ['Fishery', 'Fishery'], ['Animal Genetics', 'Animal Genetics']]

  def is_admin?
    false
  end
end
