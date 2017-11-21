class CircuitExercise < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  belongs_to :circuit
  belongs_to :exercise
end
