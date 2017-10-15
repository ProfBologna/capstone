# room = Room.new(
#                 description: "what is 2 + 2?"
#                 )

# room.save

# puzzle = Puzzle.new(
#                     room_id: 2,
#                     prompt: "check chalk board",
#                     question: "what is 2 + 2?",
#                     answer: "4",
#                     hint: "it's friggin' 2 + 2, what more do you need?"
#                     )

# puzzle.save

room = Room.new(
                description: "You enter a room with 3 consoles on the wall: CONSOLE 1, CONSOLE 2, CONSOLE 3. Check the consoles, and complete the puzzles to move on to the next room!"
                )
room.save


puzzle = Puzzle.new(
                    room_id: 3,
                    prompt: "check CONSOLE 1",
                    question: "What is the capital of Illinois?",
                    answer: "Springfield",
                    hint: "It’s the same name as the city in the show The Simpsons."
                    )
puzzle.save

puzzle = Puzzle.new(
                    room_id: 3,
                    prompt: "check CONSOLE 2",
                    question: "A typical ping pong game is played to a score of..",
                    answer: "11",
                    hint: "The square root of 121"
                    )
puzzle.save

puzzle = Puzzle.new(
                    room_id: 3,
                    prompt: "check CONSOLE 3",
                    question: "5 * 9 = ?",
                    answer: "45",
                    hint: "40 + 5"
                    )
puzzle.save

room = Room.new(
                description: "You enter a room with a a book on a table. Take a look at PAGE 1, PAGE 2, and PAGE 3."
                )
room.save


puzzle = Puzzle.new(
                    room_id: 4,
                    prompt: "check PAGE 1",
                    question: "How many sides does a cube have?",
                    answer: "6",
                    hint: "How many legs does an insect have?"
                    )
puzzle.save

puzzle = Puzzle.new(
                    room_id: 4,
                    prompt: "check PAGE 2",
                    question: "How many Platonic solids exist?",
                    answer: "5",
                    hint: "The answer to puzzle 1, -1."
                    )
puzzle.save

puzzle = Puzzle.new(
                    room_id: 4,
                    prompt: "check PAGE 3",
                    question: "How many gallons of water should an aquarium have for a single gold fish?",
                    answer: "5",
                    hint: "The same answer as puzzle 2!"
                    )
puzzle.save

