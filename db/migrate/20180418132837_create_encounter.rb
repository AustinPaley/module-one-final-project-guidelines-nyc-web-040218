class CreateEncounter < ActiveRecord::Migration[5.0]

  def change
    create_table :encounters do |t|
      t.string :location
    #  e.text :description
    end
  end

end
