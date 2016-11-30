class CreateQues < ActiveRecord::Migration
  def change
    create_table :ques do |t|
      t.string :name
      t.text :content
      t.string :link

      t.timestamps null: false
    end
  end
end
