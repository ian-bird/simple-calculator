l_value = nil # else

while(true)
    input = gets.chomp
    
    
    if input.match?(/^\d+/)
        l_value = input.match(/^\d+/).to_s.to_i
    end

    if l_value.nil?
        raise("Could not determine l_value")
    end

    operation = input.match(/^\d*(\D+)/)[1].to_s
    
    r_value = input.match(/\d+$/).to_s.to_i
    
    case operation
		when '+'
		result = l_value + r_value
		
		when '-'
		result = l_value - r_value
		
		when '*'
		result = l_value * r_value
		
		when '/'
		result = l_value / r_value
		
		else
		raise("uknown operation #{operation}")
	end
	
    puts result
    
    l_value = result
end