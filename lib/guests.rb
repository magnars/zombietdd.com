Guest = Struct.new(:name, :twitterId)

class Guests
  def self.cjno 
    Guest.new "Christian Johansen", "@cjno"
  end
  
  def self.jhannes
    Guest.new "Johannes Brodwall", "@jhannes"
  end
end
