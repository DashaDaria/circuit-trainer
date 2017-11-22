Specifications for the Sinatra Assessment

Specs:
- [x] I used Sinatra to build the app
- [x] I used ActiveRecord for storing information in a database
- [x] Included more than one model class: User, Circuit, Exercise, Circuit_Exercises
- [x] Include at least one has_many relationship:
      User has_many circuits, Circuit has_many exercises through circuit_exercises, Exercise has_many circuits through circuit_exercises
- [x] I included user accounts and utilized bcrypt gem for extra password security
- [x] Ensure that users can't modify content created by other users
      Created helper methods to ensure a user is logged in to have access to CRUD
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      Circuits have appropriate routes to perform basic CRUD
- [x] Include user input validations
      Circuits need to have a name to be created.
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
      Circuits need to have a name and users must be logged in to see content - flash messages appear with both.
- [x] README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits - 32 to date
- [x] Your commit messages are meaningful - example: "added flash messages"
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
