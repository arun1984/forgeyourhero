Factory.define :user do |user|
  user.username              "jay"
  user.email                 "jay@eg.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.sequence :name do |n|
  "Person #{n}"
end

Factory.define :user_hero do |hero|  
  hero.supername          "superman"          #:presence => true, :length => { :maximum => 40 }
  hero.realname           "clark kent"        #:presence => true, :length => { :maximum => 40 }
  # hero.alias
  hero.gender             "male"              #:presence => true
  hero.alignment          true              #:presence => true
  # hero.height
  # hero.weight
  # hero.eyes
  # hero.hair
  hero.race               "kryptonian"        #:presence => true, :length => { :maximum => 40 }
  # hero.occupation
  # hero.education
  # hero.language
  hero.galaxy             "krypton"           #:presence => true, :length => { :maximum => 40 }
  # hero.place_of_birth
  hero.power              "flying"            #:presence => true, :length => { :maximum => 160 }
  hero.description        "an awesome person" #:presence => true, :length => { :maximum => 320 }  
  hero.association :user
end

Factory.define :hero_attr do |hero|  
  hero.supername        "superman"
  hero.realname         "clark kent"
  hero.alias            "man of steel"
  hero.gender           "male"
  hero.alignment        "good"
  hero.height           180
  hero.weight           180
  hero.eyes             "blue"
  hero.hair             "black"
  hero.race             "kryptonian"
  hero.occupation       "reporter"
  hero.education        "bsc"
  hero.language         "tamil"
  hero.galaxy           "krypton"
  hero.place_of_birth   "pollachi"
  hero.power            "flying"
  hero.description      "an awesome person"
end
