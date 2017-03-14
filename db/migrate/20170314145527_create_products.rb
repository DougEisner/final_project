class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :developer
      t.string :email
      t.string :institution
      t.string :category
      t.decimal :price

      t.timestamps
    end
  end
end
