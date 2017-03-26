class RemoveNcsuFileNoFromLicenses < ActiveRecord::Migration[5.0]
  def change
    remove_column(:licenses, :ncsu_file_no)
  end
end
