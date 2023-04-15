class CreateConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :conversions do |t|
      t.references :dimension, null: false, foreign_key: true
      t.references :source_unit, null: false, foreign_key: true
      t.references :target_unit, null: false, foreign_key: true
      t.decimal :factor
      t.timestamps
    end
  end
end
