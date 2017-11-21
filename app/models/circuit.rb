class Circuit < ActiveRecord::Base
  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  belongs_to :user
  has_many :circuit_exercises
  has_many :exercises, through: :circuit_exercises


end
