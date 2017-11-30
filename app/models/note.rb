class Note < ActiveRecord::Base
  extend Textfixer::ClassMethods
  include Textfixer::InstanceMethods

  belongs_to :user
  belongs_to :exercise

end
