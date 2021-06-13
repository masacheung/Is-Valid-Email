# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
	parts = str.split("@")
  	if parts.length != 2
      return false
    end
  	
  	if !contain_one_dot(parts[1])
      return false
    end
  	
  	if !lower_case(parts[0])
      return false
    end
  	
  	if contain_num(parts[0])
      return false
    end
  
  	return true
end

def contain_one_dot(part)
  dot = part.split(".")
  if dot.length != 2
    return false
  else
    return true
  end
end
  
def lower_case(part)
  if part != part.downcase
    return false
  else
    return true
  end
end

def contain_num(part)
  num = "0123456789"
  count = 0
  while count < part.length
    if num.include?part[count]
      return true
    end
    count +=1
  end
  return false
end


puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false