class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :supername
      t.integer :like
      t.integer :dislike
      t.string :realname
      t.string :alias
      t.string :gender
      t.boolean :alignment
      t.integer :height
      t.integer :weight
      t.string :eyes
      t.string :hair
      t.string :race
      t.string :occupation
      t.string :education
      t.string :language
      t.string :galaxy
      t.string :place_of_birth
      t.string :power
      t.string :description

      t.timestamps
    end
  end
end
