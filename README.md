##  Circuit Trainer

##  About
Circuit Trainer is a Sinatra app that allows you to create and track your circuit training workouts. The app comes with an exercise library which includes exercises that target different muscle groups. A user can view a list of exercises and create his/her own circuits based on desired goals.  


##  Installation
Clone the repository, then execute:

$ bundle

##  Usage
The app comes with an exercise library. Migrate and seed the db:

$ rake db:migrate
$ rake db:seed

To start the server, run:

$ shotgun
Then navigate to localhost:9393

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

##  License
This Web Application is available as open source under the terms of the MIT License.

##  Further Development
Additional features to be developed in the future will include:
  1. 'Coach Reviews' - a tool that reviews user's circuits and provides feedback based on desired goals
  3. 'Ultimate Workouts' - another layer that allows users to create a full workout by adding multiple circuits together.
  2. Warm Up and Cool Down - an additional library of exercises that can bookend a workout  
