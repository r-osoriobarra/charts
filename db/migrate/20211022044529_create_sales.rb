class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :total
      t.references :kofi, foreign_key: true

      t.timestamps
    end
  end
end
