def print_file
  Kernel.abort('No command-line arguments given. Try again.') if ARGV.empty?
  ARGV.each do |file|
    File.foreach(file).with_index do |line, index|
      puts "#{line.lstrip.chomp} : #{index}" if line !~ /on/
    end
  end
end

print_file
