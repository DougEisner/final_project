class CreateCtdDownloads < ActiveRecord::Migration[5.0]
  def change
    create_table :ctd_downloads do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.string :download

      t.timestamps
    end
  end
end
