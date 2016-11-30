class CreateJoinTableGeeksCompanies < ActiveRecord::Migration
  def change
    create_join_table :geeks, :companies do |t|
      # t.index [:geek_id, :company_id]
      # t.index [:company_id, :geek_id]
    end
  end
end
