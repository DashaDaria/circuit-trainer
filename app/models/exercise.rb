class Exercise < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  
  belongs_to :circuit
  has_many :users, through: :circuits
end
