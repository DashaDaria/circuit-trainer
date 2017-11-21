class Exercise < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_many :circuit_exercises
  has_many :circuits, through: :circuit_exercises
  has_many :users, through: :circuits
end
