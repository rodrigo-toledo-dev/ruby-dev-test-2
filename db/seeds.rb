album_madonna   = Album.create(name: 'True Blue')
player_madona   = Player.create(name: 'Madonna')
player_shakira  = Player.create(name: 'Shakira')
album_madonna.players << player_madona
album_madonna.players << player_shakira
