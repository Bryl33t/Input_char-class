### Input Char Class Ruby


<p>
This class will simply allow you to create an input for a single character and without the need to enter the input will automatically input when the user type a letter
</p>


```ruby
	
require_relative 'input_char'

args = ["Y", "y", "n", "N"] #list of argument accepted by input

input_char = Input_Char.new

input = input_char.readline("Type:" , args) #assign value of output to input 

#readline(string, args)
#Args => array of whitelist value
#String => String to print beetween input
#	-> Type: Y

puts input

```


##History of commands

```ruby

input_char.history_cmd.each do |cmd|
   puts cmd
end
```
