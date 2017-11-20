ron = User.new(username: "ron", email: "ron@gmail.com", password: "123")
core_blaster = Circuit.new(name: "core blaster", duration: 20, difficulty: "intermediate")
ron.circuits << core_blaster
ron.save
plank = Exercise.new(name: "plank", instruction: "Get in the pushup position, only put your forearms on the ground instead of your hands", target: "core")
