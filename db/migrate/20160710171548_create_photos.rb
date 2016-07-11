class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :search_term
      t.integer :external_id
      t.integer :click_count, default:0

      t.timestamps null: false
    end
  end
end
