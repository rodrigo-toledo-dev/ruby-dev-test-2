class MultiplePlayersToAlbuns < ActiveRecord::Migration[5.2]
  def up
    create_table :albums_players, id: false do |t|
      t.belongs_to :album
      t.belongs_to :player
    end
    remove_column :albums, :player_id
  end

  def down
    drop_table :albums_players
    change_table :albums do |t|
      t.references :player, foreign_key: true
    end
  end
end
