class User < ActiveRecord::Base
  validates_presence_of :name, :on => :create,
                        :message => 'cannot be empty'
  validates_uniqueness_of :name, :on => :create,
                        :message => 'already exists. Please choose another one'
  has_and_belongs_to_many :proiects#,
                          #:class_name => "User",
                          #:join_table => "proiects_users", 
                          #:foreign_key => "proiect_id"
  has_and_belongs_to_many :events#,
                          #:class_name => "user", 
                          #:join_table => "events_users", 
                          #:foreign_key => "event_id"
  has_many :blogposts
  has_many :comments
end
