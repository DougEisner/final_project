class AddAddressAndAcceptToLicenses < ActiveRecord::Migration[5.0]
  def change
    add_column :licenses, :address, :string
    add_column :licenses, :accept, :boolean, default: false, null: false
  end
end
