class CreateJoinTableMattersProblems < ActiveRecord::Migration
  def change
    create_join_table :matters, :problems do |t|
      # t.index [:matter_id, :problem_id]
      # t.index [:problem_id, :matter_id]
    end
  end
end
