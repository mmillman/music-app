class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :status
      t.integer :band_id

      t.timestamps
    end
  end
end
