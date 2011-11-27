class Proiect < ActiveRecord::Base
  validates_length_of :title, :minimum =>  8, :on => :create, 
                      :message => 'must be at least 8 characters long'
  validates_length_of :description, :minimum => 20, :on => :create, 
                      :message => 'must be at least 20 characters long'
  has_and_belongs_to_many :users#, 
                          #:class_name => "Proiect",
                          #:join_table => "proiects_users", 
                          #:foreign_key => "user_id"
  has_many :events
  has_many :blogposts
  has_many :comments
end
