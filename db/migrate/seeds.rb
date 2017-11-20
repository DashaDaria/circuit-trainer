#//////////EXERCISES////////////////
plank = Exercise.create(name: "plank", instruction: "Get in the pushup position, only put your forearms on the ground instead of your hands", target: "core")
crunch = Exercise.create(name: "crunch", instruction: "Lie on your back with your knees bent and feet flat on the floor, hip-width apart.", target: "core")
push_up = Exercise.create(name: "push up", instruction: "Start in a high plank position. Place hands firmly on the ground, directly under shoulders.", target: "upper body")
curl = Exercise.create(name: "curl", instruction: "Stand straight with a dumbbell in each hand, your feet shoulder-width apart and hands by your sides.", target: "upper body")
squat = Exercise.create(name: "squat", instruction: "Stand with your head facing forward and your chest held up and out.", target: "lower body")
lunge = Exercise.create(name: "lunge", instruction: "Keep your upper body straight, with your shoulders back and relaxed and chin up (pick a point to stare at in front of you so you don't keep looking down).", target: "lower body")
burpee = Exercise.create(name: "burpee", instruction: "Stand with your feet shoulder-width apart, weight in your heels, and your arms at your sides.", target: "full body")
jumping_jack = Exercise.create(name: "jumping jack", instruction: "Stand with the feet together, pointing forward, and the arms hanging straight at the sides.", target: "full body")


#//////////CIRCUITS////////////////
core_blaster = Circuit.create(name: "core blaster", duration: 20, difficulty: "intermediate")
inner_legs = Circuit.create(name: "inner legs", duration: 20, difficulty: "advanced")
full_body = Circuit.create(name: "full body", duration: 20, difficulty: "beginner")

ron = User.new(username: "ron", email: "ron@gmail.com", password: "123")
ron.circuits << core_blaster
ron.circuits << full_body
ron.save
