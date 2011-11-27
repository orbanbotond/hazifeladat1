class Blogpost < ActiveRecord::Base
  validates_presence_of :title, :on => :create, 
                      :message => 'title cannot be empty'
  validates_presence_of :content, :on => :create, 
                      :message => 'cannot be empty'
  belongs_to :project, :dependent => :destroy
  belongs_to :user, :dependent => :destroy
  has_many :comments
end
