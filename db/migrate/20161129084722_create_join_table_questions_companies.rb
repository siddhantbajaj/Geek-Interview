class CreateJoinTableQuestionsCompanies < ActiveRecord::Migration
  def change
    create_join_table :questions, :companies do |t|
      # t.index [:question_id, :company_id]
      # t.index [:company_id, :question_id]
    end
  end
end
