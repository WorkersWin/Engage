class CreateSocialMediaTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :social_media_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
