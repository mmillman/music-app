class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :single_id
      t.integer :album_id
      t.integer :album_position
      t.string :bonus_regular

      t.timestamps
    end
  end
end
