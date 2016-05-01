def print_cmd_line_args
  puts "You give #{ARGV.size} arguments"
  puts ARGV[0] if !ARGV.empty?
end

print_cmd_line_args
