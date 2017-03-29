class CreateSrs < ActiveRecord::Migration
  def change
    create_table :srs do |t|
      t.string :lead
      t.string :trail
      t.integer :separation

      t.timestamps null: false
    end
  end
end
