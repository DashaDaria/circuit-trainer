class CircuitExercise < ActiveRecord::Base
  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  belongs_to :circuit
  belongs_to :exercise
end
