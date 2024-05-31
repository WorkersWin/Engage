class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :usps
      t.references :country, null: true, foreign_key: true

      t.timestamps
    end
  end
end
