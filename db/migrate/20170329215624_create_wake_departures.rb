class CreateWakeDepartures < ActiveRecord::Migration
  def change
    create_table :wake_departures do |t|
      t.string :lead
      t.string :trail
      t.string :location
      t.string :separation
      t.boolean :waivable

      t.timestamps null: false
    end
  end
end
