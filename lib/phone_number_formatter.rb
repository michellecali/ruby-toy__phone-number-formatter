# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
	array = []
	array = phone_number_str.split("")
	phone_number_str = ""
	array.keep_if { |i| i =~ /[0123456789]/ } 
	array.insert(0,"(") 
	array.insert(4,")")
	array.insert(8,"-")
	array.insert(5," ")
	phone_number_str = array.join
  return phone_number_str
end
