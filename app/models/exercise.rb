class Exercise < ActiveRecord::Base
  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  has_many :circuit_exercises
  has_many :circuits, through: :circuit_exercises
  has_many :users, through: :circuits
end
