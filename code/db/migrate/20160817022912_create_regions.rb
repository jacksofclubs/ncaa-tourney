class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :region
      t.string :city
      t.string :short_name

      t.timestamps
    end
  end
end
