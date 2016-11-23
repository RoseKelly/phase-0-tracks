classroom = {
  desk_1: ["pencil", "notebook"],
  desk_2: [],
  desk_3: ["gel pen", "lip balm"],
  desk_4: ["apple", "eraser", "journal"]
}


p classroom
# should print the whole hash with the nested arrays

p classroom[:desk_1]
# should print the array values for desk_1

p classroom[:desk_1][1]
# should print the array value for desk_1 at index 1

classroom[:desk_2].push("crayons")
# should add crayons to desk_2

p classroom[:desk_2]
# should confirm that "crayons" was added to desk_2

p classroom[:desk_3][1] = "strawberry lip balm"
# change "lip balm" at index 1 in desk_3 to "strawberry lip balm"
