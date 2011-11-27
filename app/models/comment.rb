class Comment < ActiveRecord::Base
  validates_presence_of :content, :on => :create,
                        :message => 'cannot be empty'
  belongs_to :user, :dependent => :destroy
  belongs_to :project, :dependent => :destroy
  belongs_to :event, :dependent => :destroy
  belongs_to :blogpost, :dependent => :destroy
end
