class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :summary, :text
    add_column :products, :detailed_description, :text
  end
end
