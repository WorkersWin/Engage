class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.text :description
      t.references :event_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
