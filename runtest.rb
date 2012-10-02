#!/usr/bin/env ruby
target = "localhost"
unless ARGV[0].nil?
	target = ARGV[0]
end
ENV['SPEC_TARGET']=target
system("rspec spec")