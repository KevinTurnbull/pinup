class AddVenueAndArtistToSources < ActiveRecord::Migration
  def up
    add_column :sources, :artist_id, :integer, null: true
    add_column :sources, :venue_id, :integer, null: true
  end

  def down
    remove_column :sources, :artist_id
    remove_column :sources, :venue_id
  end
end
