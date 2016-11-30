class CreateJoinTableDatumsCompanies < ActiveRecord::Migration
  def change
    create_join_table :datums, :companies do |t|
      # t.index [:datum_id, :company_id]
      # t.index [:company_id, :datum_id]
    end
  end
end
