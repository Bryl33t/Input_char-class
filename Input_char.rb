require 'io/console'

class Input_Char
  

  @@history = []

  def readline(string, list_args_whitelist)
      begin
        print(string)
        cmd = STDIN.getch
        @@history <<  cmd
        puts ""
      end while !list_args_whitelist.include?(cmd)
      return cmd
  end

  def history_cmd
    @@history
  end

  def bad_cmd
    @bad_cmd
  end

end

args = ["Y", "y", "N", "n"]

input_char = Input_Char.new

input = input_char.readline("Type: ", args)

puts input

puts "-------------- [ History Commands ] ------------------"
input_char.history_cmd.each do |cmd|
  puts cmd 
end
