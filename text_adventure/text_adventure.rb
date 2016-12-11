class Dungeon
	attr_accessor :player
	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

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

	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[direction]
	end

	def go(direction)
		puts "You go " + direction.to_s
		@player.location = find_room_in_direction(direction)
		show_current_description
	end

	class Player 
		attr_accessor :name, :location 
		def initialize(name)
			@name = name 
		end
	end

	class Room
		attr_accessor :reference, :name, :description, :connections
		def initialize(reference, name, description, connections)
			@reference = reference
			@name = name 
			@description = description
			@connections = connections
		end

		def full_description
			"You are at the " + @name + ". " + @description
		end
	end
end

khazad_dum = Dungeon.new("Gamwise Samgee")
puts khazad_dum.player.name

khazad_dum.add_room(:doors_of_durin, "Doors of Durin", "A mine is no place of a pony #{khazad_dum.player.name}. Say goodbye to Bill.", { :west => :west_gate })

khazad_dum.add_room(:west_gate, "West Gate", "Speak mellon and enter, but watch out for pond squids. Something has crept or been driven out of the dark water under the mountains. There are older and fouler things than orcs in the deep places of the world.", 
										{ :west => :chamber_of_marzarbul, :east => :doors_of_durin })

khazad_dum.add_room(:chamber_of_marzarbul,  "Chamber of Mazarbul", "Come, enjoy Balin's diary but keep Merry
										away from the inconviently placed well.", { :east => :west_gate })

khazad_dum.start(:doors_of_durin)
