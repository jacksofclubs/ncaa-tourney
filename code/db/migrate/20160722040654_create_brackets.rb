class CreateBrackets < ActiveRecord::Migration[5.0]
  def change
    create_table :brackets do |t|
      t.integer :round_of_tourny
      t.boolean :active

      t.timestamps
    end
  end
end
