class Matter < ActiveRecord::Base
	has_and_belongs_to_many :companies
	has_and_belongs_to_many :problems
end
