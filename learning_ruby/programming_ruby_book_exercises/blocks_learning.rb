def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts 4 + 4 }

def call_block_with_params
  yield("Kris")
end

def each(array)
  while !array.empty?
    yield array.shift
  end
end

call_block_with_params {|person| puts "#{person}" }
array = %w( ant bee cat joe )
each(array) { |element| puts element }
