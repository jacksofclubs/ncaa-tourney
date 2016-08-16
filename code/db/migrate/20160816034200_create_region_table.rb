class CreateRegionTable < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :region
      t.string :city
    end
  end
end
