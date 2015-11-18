#!/usr/bin/ruby
# encoding: UTF-8

ls_count=0
es_count=0
emptys_count=0

if ARGV[0]=="-h" || ARGV[0]=="--help" then
	puts "Usage:"
	puts "#{__FILE__} TEXT_FILE_NAME "
	puts "cat TEXT_FILE_NAME | #{__FILE__} "
	puts
else 

	#File.open(ARGV[0], "r") do |file_handle|
	ARGF.each_line do |file_handle|
	  file_handle.each_line do |code_line|
	  	if code_line =~ /(^[[:space:]]+$)/ then
	  		w_matched_segment=$1
			emptys_count+=w_matched_segment.length
			puts "All White Space     :#{w_matched_segment.length}:#{code_line.chomp}:"

	  	else
			  	if code_line =~ /(^[[:space:]]+)/ then
			  		l_matched_segment=$1.chomp
					if l_matched_segment.length == 0 then
						puts "Empty line          :1:#{code_line.chomp}:"
						emptys_count+=1
					else
						puts "Leading White Space :#{l_matched_segment.length}:#{code_line.chomp}:"
						ls_count+=l_matched_segment.length
					end # else
				end 
			  	if code_line =~ /([[:space:]]+$)/ then
			  		t_matched_segment=$1.chomp
			  		if t_matched_segment.length != 0 then
						puts "Trailing White Space:#{t_matched_segment.length}:#{code_line.chomp}:"
						es_count+=t_matched_segment.length
					else
						es_count+=0
					end # else
				end 
			end # if just white
		 end
	end # file

	puts
	puts "Characters in whitespace only lines:" + emptys_count.to_s + " characters."
	puts "Characters of leading whitespace   :" + ls_count.to_s + " characters."
	puts "Characters of trailing whitespace  :" + es_count.to_s + " characters."
	puts "Total unnecessary whitespace       :" + (ls_count+es_count+emptys_count).to_s + " characters."

end # else not help