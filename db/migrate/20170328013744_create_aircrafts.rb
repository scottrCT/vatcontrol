class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.string :code
      t.string :acClass
      t.string :acType
      t.string :icaoWTC
      t.string :recatWakeCat
      t.string :srs
      t.integer :lahso
      t.integer :engines
      t.string :engType
      t.string :weightClass

      t.timestamps null: false
    end
  end
end
