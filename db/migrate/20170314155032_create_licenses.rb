class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :price
      t.date :expiration_date

      t.timestamps
    end
  end
end
