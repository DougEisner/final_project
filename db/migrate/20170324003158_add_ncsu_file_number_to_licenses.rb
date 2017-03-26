class AddNcsuFileNumberToLicenses < ActiveRecord::Migration[5.0]
  def change
    add_column :licenses, :ncsu_file_no, :integer
  end
end
