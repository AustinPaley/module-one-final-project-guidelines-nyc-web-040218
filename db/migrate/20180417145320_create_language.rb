class CreateLanguage < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :language_type
    #  t.string :typical_speakers
    end
  end
end
