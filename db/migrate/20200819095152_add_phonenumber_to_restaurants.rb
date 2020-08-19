class AddPhonenumberToRestaurants < ActiveRecord::Migration[6.0]
  def change
      add_column :restaurants, :phonenumber, :integer
  end
end
