class Hero < ActiveRecord::Base
  
  attr_accessible :supername, :realname, :alias, :gender, :alignment, :height, :weight
  attr_accessible :eyes, :hair, :race, :occupation, :education, :language, :galaxy
  attr_accessible :place_of_birth, :power, :description
  # :like, :dislike
  
  belongs_to :user
  
  validates :supername,     :presence => true, :length => { :maximum => 40 }
  validates :realname,      :presence => true, :length => { :maximum => 40 }
  # validates :alias
  validates :gender,        :presence => true
  validates :alignment,     :presence => true
  # validates :height
  # validates :weight
  # validates :eyes
  # validates :hair
  validates :race,          :presence => true, :length => { :maximum => 40 }
  # validates :occupation
  # validates :education
  # validates :language
  validates :galaxy,        :presence => true, :length => { :maximum => 40 }
  # validates :place_of_birth
  validates :power,         :presence => true, :length => { :maximum => 160 }
  validates :description,   :presence => true, :length => { :maximum => 320 }
  
  validates :user_id,       :presence => true

  default_scope :order => 'heros.created_at DESC'
  
end
