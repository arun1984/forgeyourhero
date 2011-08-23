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
  hero.supername        "superman"
  hero.realname         "clark kent"
  hero.alias            "man of steel"
  hero.gender           "male"
  hero.alignment        1
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
  hero.association :user
end

