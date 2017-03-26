class AddNcsuFileNumberToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :ncsu_file_no, :integer
  end
end
