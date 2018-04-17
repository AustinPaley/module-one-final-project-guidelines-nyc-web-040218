class Spell < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.string :name

    end
  end
end
