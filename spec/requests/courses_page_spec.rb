require_relative '../../spec_helper'

describe "https://benchprep.com/courses page" do

	tests = [] #init array
	it 'should be able to visit each Course' do

		visit('/courses')
		# find h3 course title with course name
		within('ul#course-list.course-list')do
			all('li').each { |item|
			
			# Pass one
			title = 'h3#{value}'
			id = item["data-content-package-id"]
			# tests = << {title: title, id: id}

			within(:xpath, "//li[@data-content-package-id='"+id+"']")do
				find('h3.course-title').click

				page.should have_link("Learn more")

				within(:xpath, "//li[@data-content-package-id='"+id+"']")do
					click_on('Learn more')
				end
			end
			}

			find('h1.padded-heading').should have_content(title)
		end
	end
end

