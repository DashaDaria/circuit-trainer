class User < ActiveRecord::Base
  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  has_many :circuits
  has_many :exercises, through: :circuits
  has_secure_password
end
