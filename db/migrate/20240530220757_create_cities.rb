class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :state, null: true, foreign_key: true

      t.timestamps
    end
    add_index(:cities, [:name, :state_id], unique: true)
  end
end
