class CreateJoinTableDatasCompanies < ActiveRecord::Migration
  def change
    create_join_table :datas, :companies do |t|
      # t.index [:data_id, :company_id]
      # t.index [:company_id, :data_id]
    end
  end
end
