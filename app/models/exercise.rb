class Exercise < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_and_belongs_to_many :circuits
  has_many :users, through: :circuits
end
