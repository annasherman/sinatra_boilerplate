class Dictionary #classes have to be capitaliezd to stand out as constants. so do data types, String, Fixnum, Float, Hash.

def initialize(initial_hash)
  @internal_hash = initial_hash
end

def to_json
  return @internal_hash.to_json
end

def add(key,value)
  if key.is_a?(String) && value.is_a?(String)
    @internal_hash[key]=value
  end
  return @internal_hash
end

def to_hash
  return @internal_hash
end

end # end class Dictioary

# happy_things = Dictionary.new({
#   :happy => 'thing'
#   })
#
# fun_things = Dictionary.new({
#   :woot => 'sledding'
#   })
# json = happy_things.to_json
# p json
