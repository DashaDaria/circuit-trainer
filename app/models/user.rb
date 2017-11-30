class User < ActiveRecord::Base
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  has_many :circuits
  has_many :exercises, through: :circuits
  has_many :notes
  has_secure_password
end
