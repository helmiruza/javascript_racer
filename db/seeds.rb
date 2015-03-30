class PlayerImporter
 def self.import
      Player.create(name: "Player 1")
      Player.create(name: "Player 2")
 end
end

PlayerImporter.import