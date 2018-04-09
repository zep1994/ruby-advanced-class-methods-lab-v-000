class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
   song = self.new
   song.save
   song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = (name)
    song
  end
  
  def self.create_by_name(name)
     song = self.new
    song.name = (name)
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.detect {|song| song.name == name}
  end
  
  def self.find_or_create_by_name(find)
    found = self.find_by_name(find)
    if found == nil
     self.create_by_name(find)
    else
      found
    end
  end 

  def self.find_or_create_by_name(name)
    if self.find_by_name == nil
      song = self.create_by_name(name) 
    else
     self.find_by_name
    end
  end 

  def self.alphabetical
    self.all.sort_by { |song| song.name}
  end 
  
<<<<<<< HEAD
 def self.new_from_filename(mp3)
    cd = self.new 
    cd.name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[1] 
    cd.artist_name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[0]
    cd
  end 
  
  def self.create_from_filename(mp3)
    cd = self.new 
    cd.name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[1] 
    cd.artist_name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[0]
    cd.save
    cd
  end 
  
  def self.destroy_all
    self.all.clear
  end
  
=======
>>>>>>> bb2722a6772993bd53705a9db9e6e6000d16d8c3
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
