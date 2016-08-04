class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :school_name
      t.string :short_name
      t.string :image_file
      t.string :conference
      t.string :mascot
      t.integer :belongs_to_participant
      t.integer :seed
      t.string :division
      t.boolean :playing

      t.timestamps
    end
  end
end
