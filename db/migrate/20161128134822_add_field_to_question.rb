class AddFieldToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :link, :string
  end
end
