class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :short_name
      t.string :phone_number
      t.string :email
      t.string :image_file
      t.integer :points
      t.integer :ranking
      t.boolean :playing

      t.timestamps
    end
  end
end
