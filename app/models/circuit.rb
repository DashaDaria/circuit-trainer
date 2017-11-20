class Circuit < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  belongs_to :user
  has_and_belongs_to_many :exercises
end
