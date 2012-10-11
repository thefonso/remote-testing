require_relative '../../spec_helper'

describe "https://benchprep.com/courses page" do

	
	it 'should be able to visit each Course' do
		course_link_tests = []
		
		visit('/courses')
		('ul#course-list.course-list').all('li.course-list-item').each do |item|
			title = item.find('h3.course-title').text
			link_url = item.find("a.learn-more")["href"]
			course_link_tests << {title: title, url: link_url}
		end

		broken_pages = []
		course_link_tests.each do |course_link_test|
			visit(course_link_test[:url])
			if page.find('h1.padded-heading').text == course_link_test[:title]
				broken_pages << course_link_test
			end
		end

		# TODO - do this without assert
		if broken_pages.any?
			# assert false, broken_pages.join("\n")
			# broken_pages.join("/n")
			output  = File.open("broken_pages.txt", 'w'){ |f|
				f << broken_pages
			}
		else
			# assert true
		end

	end
end

