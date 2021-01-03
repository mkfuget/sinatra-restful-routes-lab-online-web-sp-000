class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name 
      t.string :ingredients 
<<<<<<< HEAD
      t.string :cook_time
=======
      t.float :cook_time
>>>>>>> 7eada854fcb0db9e75f7ddcb2b4893a245da24e9
    end 
  end 
end