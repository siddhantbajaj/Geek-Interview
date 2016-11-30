class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :name
      t.text :content
      t.string :link

      t.timestamps null: false
    end
  end
end
