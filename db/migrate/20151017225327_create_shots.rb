class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
