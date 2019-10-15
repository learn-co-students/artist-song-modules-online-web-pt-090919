module Findable
  def find_by_name(name)
    #can't use a class-specific class variable like @@artists, 
      # because our method would break when included in
      # any class that didn't define such a variable
    all.detect{|a| a.name == name}
  end
  
end