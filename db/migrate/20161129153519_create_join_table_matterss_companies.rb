class CreateJoinTableMatterssCompanies < ActiveRecord::Migration
  def change
    create_join_table :matters, :companies do |t|
      # t.index [:matter_id, :company_id]
      # t.index [:company_id, :matter_id]
    end
  end
end
