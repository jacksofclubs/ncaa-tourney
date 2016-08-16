class AddShortNameToRegions < ActiveRecord::Migration[5.0]
  def change
  	add_column :regions, :short_name, :string
  end
end
