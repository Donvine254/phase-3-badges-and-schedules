# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end
def batch_badge_creator (names_array)
    names_array.map do |name|
        badge_maker(name)
    end
end

def assign_rooms(names_array)
    names_array.map.with_index(1) do |name, index|
      room = index
      "Hello, #{name}! You'll be assigned to room #{room}!"
    end
  end
def printer(names_array)
    badges= batch_badge_creator(names_array)
    room_assignments=assign_rooms(names_array)
    badges.zip(room_assignments).map do |badge, room_assignment|
        puts badge
        puts room_assignment
    end
   
end