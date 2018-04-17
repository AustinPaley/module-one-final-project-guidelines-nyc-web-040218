class CreateMonster < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :size
      t.string :type
      t.integer :hit_points
      t.integer :spell_id
      t.integer :language_id
    end
  end
end





# name, size, type, hit_points
