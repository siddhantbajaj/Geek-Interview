class AddFieldToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :link, :string
  end
end
