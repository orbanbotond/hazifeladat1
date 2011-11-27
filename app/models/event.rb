class Event < ActiveRecord::Base
  validates_length_of :title, :minimum =>  8, :on => :create, 
                      :message => 'must be at least 8 characters long'
  validates_length_of :description, :minimum => 20, :on => :create, 
                      :message => 'must be at least 20 characters long'
  has_and_belongs_to_many :users#,
                          #:class_name => "event",
                          #:join_table => "events_users", 
                          #:foreign_key => "user_id"
  belongs_to :project, :dependent => :destroy
  has_many :comments
  #has_attached_file :photo
end
