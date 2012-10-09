require_relative '../../spec_helper'

describe "https://benchprep.com/courses page" do
	xit 'should go to the all courses page' do
		visit('/courses')

		page.should have_content("Browse BenchPrep Courses")
	end
	# TODO loop over each li within ul#course-list
	# iterate each li item in ul#course-list

	
		it 'should be able to visit each Course' do
			visit('/courses')
			# find h3 course title with course name
			within('ul#course-list.course-list') do
				all('li.course.course-list-item').each { |item|
					# find('h3.course-title').click
					# page.should have_link("Learn more")

					item.click
					within('li.course.course-list-item')do
						find_link('Learn more').click

						page.should_not have_content('500 internal')
						
					end

				}
				
			end
		end
	
end