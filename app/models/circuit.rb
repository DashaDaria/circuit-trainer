class Circuit < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  belongs_to :user
  has_many :circuit_exercises
  has_many :exercises, through: :circuit_exercises

  
end
