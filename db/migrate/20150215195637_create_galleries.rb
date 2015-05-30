class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :description

      t.references :page

      t.timestamps
    end
  end
end
