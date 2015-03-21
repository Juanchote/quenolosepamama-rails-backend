class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
      t.string :file

      t.belongs_to :gallery

      t.timestamps null: false
    end
  end
end
