class HomeController < ApplicationController
	before_action :set_company, only: [:company]
	before_action :set_problem, only: [:problem]
	def index
		
	end
	def showCompanyTags
		
	end
	def showProblemTags
		
	end
	def company
		
	end
	def problem
		
	end
	def set_company
      @company = Company.find(params[:id])
    end
    def set_problem
      @problem = Problem.find(params[:id])
    end
end
