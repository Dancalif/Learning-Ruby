# Call methods from script_21_01.rb, script_21_02.rb, script_21_03.rb

require "./script_21_01.rb"

my_method

require "./script_21_02.rb"

my_method_param ("Dan")
	
require "./script_21_03.rb"

my_method_param_default

require "./script_21_03.rb"

my_method_param_default (name = "San Francisco")
