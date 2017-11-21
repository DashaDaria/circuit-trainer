class User < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_many :circuits
  has_many :exercises, through: :circuits
  has_secure_password
end