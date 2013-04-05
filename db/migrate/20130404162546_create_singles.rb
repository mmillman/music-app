class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :song
      t.integer :artist_id
      t.timestamps
    end
  end
end
