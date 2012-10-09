require_relative '../../spec_helper'

describe "https://benchprep.com/courses page" do
	xit 'should go to the all courses page' do
		visit('/courses')

		page.should have_content("Browse BenchPrep Courses")
	end

	it 'should be able to visit ACT English Prep Course' do
		visit('/courses')
		# find h3 course title with course name
		within(:xpath, "//li[@data-content-package-id='182']")do
			find('h3.course-title').click
			page.should have_link("Learn more")

			within(:xpath, "//li[@data-content-package-id='182']")do
				click_on('Learn more')
			end
		end
		find('h1.padded-heading').should have_content('ACT English Prep Course')
	end
	it 'should be able to visit ACT Math Exam Prep Course' do
		visit('/courses')
		# find h3 course title with course name
		within(:xpath, "//li[@data-content-package-id='191']")do
			find('h3.course-title').click
			page.should have_link("Learn more")

			within(:xpath, "//li[@data-content-package-id='191']")do
				click_on('Learn more')
			end
		end
		find('h1.padded-heading').should have_content('ACT Math Exam Prep Course')
	end
	it 'should be able to visit Biochemistry Prep Course - Schaums' do
		visit('/courses')
		# find h3 course title with course name
		within(:xpath, "//li[@data-content-package-id='134']")do
			find('h3.course-title').click
			page.should have_link("Learn more")

			within(:xpath, "//li[@data-content-package-id='134']")do
				click_on('Learn more')
			end
		end
		find('h1.padded-heading').should have_content('Biochemistry Prep Course - Schaums Outlines')
	end

end

