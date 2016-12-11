class Dungeon
	attr_accessor :player
	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)

	def add_room(reference, name, description, connections)
		@rooms << Room.new(reference, name, description, connections)
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect { |room| room.reference = reference}
	end

	class Room
		def full_description
			@name + "\n\n You are in @description"
		end
	end
end

khazad_dum = Dungeon.new("Gamwise Samgee")
puts khazad_dum.player.name

khazad_dum.add_room(:doors_of_durin, "Doors of Durin", "A mine is no place of a pony #{khazad_dum.player.name}. Say 
										goodbye to Bill.", { :west => :west_gate })

khazad_dum.add_room(:west_gate, "West Gate", "Speak mellon and enter, but watch out for pond squids.", 
										{ :west => :chamber_of_marzarbul, :east => :doors_of_durin })

khazad_dum.add_room(:chamber_of_marzarbul,  "Chamber of Mazarbul", "Come, enjoy Balin's diary but keep Merry
										away from the inconviently placed well.", { :east => :west_gate })
