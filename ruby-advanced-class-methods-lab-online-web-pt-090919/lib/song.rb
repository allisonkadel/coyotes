class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    x = self.new
    x.save
    x
  end

  def self.new_by_name(name)
    x = self.create
    x.name = name
    x
  end

  def self.create_by_name(name)
    x = self.new_by_name(name)
    x.save
    x
  end

  def self.find_by_name(name)

    @@all.detect do |song| #=> this is a higher order enumerator which will accomplish
      song.name == name    #   the same thing as the below code. Both are valid!
    end

    # return_song = nil
    # @@all.each do |song|
    #   if song.name == name
    #     return_song = song
    #   end
    # end
    # return_song

  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

end
