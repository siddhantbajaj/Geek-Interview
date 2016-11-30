namespace :updateData do
	task :update => :environment do
			
				browser = Watir::Browser.new(:phantomjs)
				# browser.goto("http://www.practice.geeksforgeeks.org/probtags.php")
				# doc=Nokogiri::HTML.parse(browser.html)
				
				# comp=doc.css(".col-sm-7 .table a")
				
				# comp=comp.map{|l| l["href"]}
				
				
				
				# sleep(10)
				# browser.goto("http://www.practice.geeksforgeeks.org/probtags.php?offset=50")
				# doc=Nokogiri::HTML.parse(browser.html)
				
				# comp2=doc.css(".col-sm-7 .table a")
				
				# comp2=comp2.map{|l| l["href"]}
				
				# sleep(10)
				# browser.goto("http://www.practice.geeksforgeeks.org/probtags.php?offset=100")
				# doc=Nokogiri::HTML.parse(browser.html)
				
				# comp3=doc.css(".col-sm-7 .table a")
				
				# comp3=comp3.map{|l| l["href"]}
				
				# total=comp+comp2+comp3
				# count=51
				# # Company.all.each do |company|
				# # 	company.name=total[count]
				# # 	company.save
				# # 	count=count+1
				# # end
				# total.each do |c|
				# 	problem=Problem.find(count)
				# 	# company.link="http://www.practice.geeksforgeeks.org/"+c
				# 	# company.save
				# 	problem.link="http://www.practice.geeksforgeeks.org/"+c
				# 	problem.save
				# 	count=count+1
				# end
				
				Problem.all.each do |problem|
					#company=Company.first
					
					browser.goto(problem.link)
					sleep(5)
					doc=Nokogiri::HTML.parse(browser.html)
					try1=doc.css(".col-sm-7 tr > :nth-child(1)")
					
					try1=try1.select{|t| t.name=="td"}
					
					arr2=[]
					try1.each do |t|
					 a=t.children.select{|t1| t1.name=="a"}
					arr2.push(a[0])
					end

					question=arr2.map{|a| a.text}
					question.each do |ques|
						q=Matter.find_by_name(ques)
						if(q==nil)
							next
						end
						if(!q.problems.include?problem)
							q.problems << problem
						end
						if(!problem.matters.include?q)
							problem.matters<<q
						end
						q.save
						problem.save
						
					end
				end

				# Question.all.each do |question|
				# 	if(question.id<422)
				# 		next
				# 	end
				# 	browser.goto(question.link)
				# 	doc=Nokogiri::HTML.parse(browser.html)
				# 	text=doc.css("span").text.strip
				# 	text=text.gsub!(/[\n]/, '')
				# 	question.content=text
				# 	question.save
				# end


				browser.close()
				# Question.all.each do |ques|
				# 	if(Datum.find_by_name(ques.name)==nil)
				# 		d=Datum.new
				# 		d.name=ques.name
				# 		d.content=ques.content
				# 		d.link=ques.link
				# 		d.save
				# 	end
				# end

			
		
		end
	

	end