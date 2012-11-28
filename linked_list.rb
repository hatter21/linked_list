class List
	@@index = 0
	@@calculated_index = 0
	def initialize
		@list = []	
	end

	def output_list
		p @list
		puts " "
	end

	def add(something)
		@list << something
		@@index += 1 
	end

	def self.calculation_index(value)
		for i in 0..@@index
			if @list.at(i) == value 
				@@calculated_index = i
			end
		end	
	end

	def remove(value)
		if @@calculated_index == nil
			puts "Element does not exist!"
		else
 			@list.delete(value)
		end
	end

	def replace(value, something)	
		if @@calculated_index == nil
			puts "Element does not exist!"
		else
			@list[@@calculated_index] = something
		end
	end

	def previous(value)
		if @@calculated_index != nil
			if @@calculated_index == 0
				puts "Element is the first!"
			else puts @list[@@calculated_index - 1]
			end
		else
			puts "Element does not exist!"
		end
		puts " "
	end

	def the_next(value)
		if @@calculated_index != nil
			if @@calculated_index == @@index - 1
				puts "Element is the last!"
			else puts @list[@@calculated_index + 1]
			end
		else
			puts "Element does not exist!"
		end 
		puts " "
	end

end
h = List.new
h.add("Hello")
h.add("white")
h.add("rabbit")
h.output_list
h.replace("Hello", "Goodbye")
h.output_list
h.previous("Goodbye")
h.the_next("Goodbye")
h.remove("white")
h.output_list
