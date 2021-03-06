module Concerns::Findable
 
  def create(name) 
    song = Song.new(name)
  end 
  
  def find_by_name(name)
    self.all.detect{|song| song.name == name}
  end 
  
  def find_or_create_by_name(name) 
    self.find_by_name(name) || self.create(name)
  end 
end 